.class public Lcom/android/internal/telephony/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_PHB_LOAD_ALL_DONE:I = 0x68

.field static final EVENT_PHB_LOAD_DONE:I = 0x67

.field static final EVENT_PHB_QUERY_STAUTS:I = 0x69

.field static final EVENT_UPDATE_PHB_RECORD_DONE:I = 0x65

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final EVENT_VERIFY_PIN2:I = 0x66

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"

.field private static mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;


# instance fields
.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field current_read:I

.field ef:I

.field extensionEF:I

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field pendingExtLoads:I

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field total:I

.field used:I

.field userResponse:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v1, Lcom/android/internal/telephony/AdnRecordLoader;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 112
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 113
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "fh"

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 124
    return-void
.end method

.method private canUseGsm7Bit(Ljava/lang/String;)Z
    .locals 2
    .parameter "alphaId"

    .prologue
    const/4 v0, 0x1

    .line 508
    invoke-static {p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private encodeATUCS(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v3, output:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 518
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, hexInt:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    .line 520
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 521
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v0           #hexInt:Ljava/lang/String;
    .end local v2           #j:I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/AdnRecord;
    .locals 8
    .parameter "entry"

    .prologue
    const/4 v4, 0x0

    .line 630
    iget-object v5, p1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 631
    .local v1, ba:[B
    if-nez v1, :cond_0

    .line 632
    const-string v5, "RIL_AdnRecordLoader"

    const-string v6, "entry.alphaId is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_0
    return-object v4

    .line 637
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const-string/jumbo v7, "utf-16be"

    invoke-direct {v0, v1, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    .local v0, alphaId:Ljava/lang/String;
    iget v4, p1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    const/16 v5, 0x91

    if-ne v4, v5, :cond_2

    .line 647
    sget-object v4, Lcom/android/internal/telephony/AdnRecordLoader;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    if-nez v4, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 653
    .local v3, number:Ljava/lang/String;
    :goto_1
    const/16 v4, 0x3f

    const/16 v5, 0x4e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 655
    const/16 v4, 0x70

    const/16 v5, 0x2c

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 657
    const/16 v4, 0x77

    const/16 v5, 0x3b

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 661
    new-instance v4, Lcom/android/internal/telephony/AdnRecord;

    iget v5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    iget v6, p1, Lcom/android/internal/telephony/PhbEntry;->index:I

    invoke-direct {v4, v5, v6, v0, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .end local v0           #alphaId:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 639
    .local v2, ex:Ljava/io/UnsupportedEncodingException;
    const-string v5, "RIL_AdnRecordLoader"

    const-string/jumbo v6, "implausible UnsupportedEncodingException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 647
    .end local v2           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #alphaId:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/AdnRecordLoader;->mPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    iget-object v5, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 649
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .restart local v3       #number:Ljava/lang/String;
    goto :goto_1
.end method

.method private getPhbStorageType(I)I
    .locals 1
    .parameter "ef"

    .prologue
    .line 528
    const/4 v0, -0x1

    .line 529
    .local v0, type:I
    sparse-switch p1, :sswitch_data_0

    .line 542
    :goto_0
    return v0

    .line 531
    :sswitch_0
    const/4 v0, 0x0

    .line 532
    goto :goto_0

    .line 534
    :sswitch_1
    const/4 v0, 0x1

    .line 535
    goto :goto_0

    .line 537
    :sswitch_2
    const/4 v0, 0x2

    .line 538
    goto :goto_0

    .line 529
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_1
        0x6f40 -> :sswitch_2
    .end sparse-switch
.end method

.method private readEntryFromModem(I[I)V
    .locals 5
    .parameter "type"
    .parameter "readInfo"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 603
    array-length v1, p2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 604
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readEntryToModem, invalid paramters:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_0
    return-void

    .line 615
    :cond_0
    aget v1, p2, v3

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v0, v1, -0x1

    .line 616
    .local v0, eIndex:I
    aget v1, p2, v4

    if-le v0, v1, :cond_1

    .line 617
    aget v0, p2, v4

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    aget v2, p2, v3

    const/16 v3, 0x68

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->ReadPhbEntry(IIILandroid/os/Message;)V

    goto :goto_0
.end method

.method private updatePhb(Lcom/android/internal/telephony/AdnRecord;I)V
    .locals 3
    .parameter "adn"
    .parameter "type"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/16 v2, 0x66

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/AdnRecordLoader;->writeEntryToModem(Lcom/android/internal/telephony/AdnRecord;I)V

    goto :goto_0
.end method

.method private writeEntryToModem(Lcom/android/internal/telephony/AdnRecord;I)V
    .locals 8
    .parameter "adn"
    .parameter "type"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x2b

    .line 546
    const/16 v3, 0x81

    .line 547
    .local v3, ton:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, alphaId:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 552
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 558
    :cond_0
    const/16 v3, 0x91

    .line 560
    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 563
    :cond_1
    const/16 v4, 0x4e

    const/16 v5, 0x3f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 565
    const/16 v4, 0x2c

    const/16 v5, 0x70

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 567
    const/16 v4, 0x3b

    const/16 v5, 0x77

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/AdnRecordLoader;->encodeATUCS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    new-instance v1, Lcom/android/internal/telephony/PhbEntry;

    invoke-direct {v1}, Lcom/android/internal/telephony/PhbEntry;-><init>()V

    .line 579
    .local v1, entry:Lcom/android/internal/telephony/PhbEntry;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x81

    if-eq v3, v4, :cond_3

    .line 581
    :cond_2
    iput p2, v1, Lcom/android/internal/telephony/PhbEntry;->type:I

    .line 582
    iget v4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iput v4, v1, Lcom/android/internal/telephony/PhbEntry;->index:I

    .line 583
    iput-object v2, v1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 584
    iput v3, v1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    .line 585
    iput-object v0, v1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    .line 596
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x65

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->writePhbEntry(Lcom/android/internal/telephony/PhbEntry;Landroid/os/Message;)V

    .line 599
    return-void

    .line 587
    :cond_3
    iput p2, v1, Lcom/android/internal/telephony/PhbEntry;->type:I

    .line 588
    iget v4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    iput v4, v1, Lcom/android/internal/telephony/PhbEntry;->index:I

    .line 589
    iput-object v7, v1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 590
    iput v3, v1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    .line 591
    iput-object v7, v1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 220
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v2, :sswitch_data_0

    .line 481
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 485
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 487
    :cond_1
    :goto_1
    return-void

    .line 222
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 223
    .local v9, ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .line 225
    .local v8, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 226
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v12

    .line 471
    .local v12, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 230
    .end local v12           #exc:Ljava/lang/RuntimeException;
    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v9       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v16, v0

    .line 236
    .local v16, recordSize:[I
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v16, v3

    if-le v2, v3, :cond_4

    .line 237
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 241
    :cond_4
    const/4 v2, 0x0

    aget v2, v16, v2

    invoke-virtual {v8, v2}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B

    move-result-object v5

    .line 243
    .local v5, data:[B
    if-nez v5, :cond_5

    .line 244
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "wrong ADN format"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 248
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 251
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 255
    .end local v5           #data:[B
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v16           #recordSize:[I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 256
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    .line 257
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "update EF adn record failed"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 260
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 261
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 264
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 265
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v5, v0

    .line 267
    .restart local v5       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 268
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "load failed"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 278
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-direct {v8, v2, v3, v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 279
    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 281
    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v4, v8, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 295
    .end local v5           #data:[B
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 296
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v5, v0

    .line 297
    .restart local v5       #data:[B
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .line 299
    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 300
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "load failed"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 310
    :cond_8
    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecord([B)V

    .line 312
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 318
    .end local v5           #data:[B
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 319
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 321
    .local v10, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 322
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "load failed"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 325
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 329
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, s:I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 330
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v8, v3, v4, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 331
    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v8}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 338
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v4, v8, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 329
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 348
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v13           #i:I
    .end local v17           #s:I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 349
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_b

    .line 350
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "update PHB EF record failed"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 353
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 354
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 358
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 359
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v8, v0

    .line 361
    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_c

    .line 362
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PHB Verify PIN2 error"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 366
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->writeEntryToModem(Lcom/android/internal/telephony/AdnRecord;I)V

    .line 367
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 371
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 372
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/PhbEntry;

    move-object v0, v2

    check-cast v0, [Lcom/android/internal/telephony/PhbEntry;

    move-object v11, v0

    .line 374
    .local v11, entries:[Lcom/android/internal/telephony/PhbEntry;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_d

    .line 375
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PHB Read an entry Error"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 379
    :cond_d
    const/4 v2, 0x0

    aget-object v2, v11, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v8

    .line 380
    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 381
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 392
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #entries:[Lcom/android/internal/telephony/PhbEntry;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 393
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v14, v0

    .line 395
    .local v14, info:[I
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 396
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PHB Query Info Error"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 400
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v18

    .line 401
    .local v18, type:I
    const/4 v2, 0x3

    new-array v15, v2, [I

    .line 402
    .local v15, readInfo:[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v15, v2

    .line 403
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget v3, v14, v3

    aput v3, v15, v2

    .line 404
    const/4 v2, 0x2

    const/4 v3, 0x1

    aget v3, v14, v3

    aput v3, v15, v2

    .line 406
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    aget v3, v15, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 407
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    const/4 v2, 0x2

    aget v2, v15, v2

    if-ge v13, v2, :cond_f

    .line 409
    new-instance v8, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    add-int/lit8 v3, v13, 0x1

    const-string v4, ""

    const-string v6, ""

    invoke-direct {v8, v2, v3, v4, v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 410
    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v2, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 407
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 413
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/AdnRecordLoader;->readEntryFromModem(I[I)V

    .line 414
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 418
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v13           #i:I
    .end local v14           #info:[I
    .end local v15           #readInfo:[I
    .end local v18           #type:I
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 419
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v2, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v15, v0

    .line 420
    .restart local v15       #readInfo:[I
    iget-object v2, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/PhbEntry;

    move-object v0, v2

    check-cast v0, [Lcom/android/internal/telephony/PhbEntry;

    move-object v11, v0

    .line 422
    .restart local v11       #entries:[Lcom/android/internal/telephony/PhbEntry;
    iget-object v2, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_10

    .line 423
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "PHB Read Entries Error"

    iget-object v4, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 427
    :cond_10
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    array-length v2, v11

    if-ge v13, v2, :cond_12

    .line 428
    aget-object v2, v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->getAdnRecordFromPhbEntry(Lcom/android/internal/telephony/PhbEntry;)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v8

    .line 429
    .restart local v8       #adn:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v8, :cond_11

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    iget v3, v8, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    const/4 v2, 0x1

    aget v3, v15, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v15, v2

    .line 427
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 437
    :cond_11
    const-string v2, "RIL_AdnRecordLoader"

    const-string v3, "getAdnRecordFromPhbEntry return null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getAdnRecordFromPhbEntry return null"

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 444
    .end local v8           #adn:Lcom/android/internal/telephony/AdnRecord;
    :cond_12
    const/4 v2, 0x0

    aget v3, v15, v2

    add-int/lit8 v3, v3, 0xa

    aput v3, v15, v2

    .line 446
    const/4 v2, 0x1

    aget v2, v15, v2

    if-gez v2, :cond_13

    .line 447
    const-string v2, "RIL_AdnRecordLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the read entries is not sync with query status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the read entries is not sync with query status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 455
    :cond_13
    const/4 v2, 0x1

    aget v2, v15, v2

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x2

    aget v3, v15, v3

    if-lt v2, v3, :cond_15

    .line 457
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 458
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 460
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v18

    .line 461
    .restart local v18       #type:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/AdnRecordLoader;->readEntryFromModem(I[I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_9
        0x69 -> :sswitch_8
    .end sparse-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 3
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 160
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 161
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 164
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 165
    .local v0, type:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 3
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 134
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 135
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 136
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 139
    .local v0, type:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, p3, p3, v2}, Lcom/android/internal/telephony/CommandsInterface;->ReadPhbEntry(IIILandroid/os/Message;)V

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, p3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 191
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 192
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 193
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 194
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 195
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 197
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/AdnRecordLoader;->getPhbStorageType(I)I

    move-result v0

    .line 198
    .local v0, type:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/AdnRecordLoader;->updatePhb(Lcom/android/internal/telephony/AdnRecord;I)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto :goto_0
.end method
