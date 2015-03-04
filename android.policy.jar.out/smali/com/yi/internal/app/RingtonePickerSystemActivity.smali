.class public final Lcom/yi/internal/app/RingtonePickerSystemActivity;
.super Landroid/app/Activity;
.source "RingtonePickerSystemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEAFULT_ALARM_PATH:Ljava/lang/String; = "/system/media/audio/alarms/"

.field private static final DEAFULT_NOTIFICATION_PATH:Ljava/lang/String; = "/system/media/audio/notifications/"

.field private static final DEAFULT_RINGTONE_PATH:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final KEY_FACTORY_ALARM:Ljava/lang/String; = "ro.config.alarm_alert"

.field private static final KEY_FACTORY_NOTIFICATION:Ljava/lang/String; = "ro.config.notification_sound"

.field private static final KEY_FACTORY_RINGTONE:Ljava/lang/String; = "ro.config.ringtone"

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private REQUEST_CODE_CUSTOM_RINGTONE:I

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mCustomVoiceList:Landroid/widget/ListView;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mProcessReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mSmsNotification:Z

.field private mStaticItemCount:I

.field private mTypes:I

.field private mUriForDefaultItem:Landroid/net/Uri;

.field private mVoiceAdapter:Landroid/widget/ListAdapter;

.field private mVoiceCustomAdapter:Landroid/widget/ListAdapter;

.field private mVoiceList:Landroid/widget/ListView;

.field private registed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSilentPos:I

    .line 63
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtonePos:I

    .line 66
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    .line 69
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSampleRingtonePos:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->registed:Z

    .line 91
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mTypes:I

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->REQUEST_CODE_CUSTOM_RINGTONE:I

    .line 452
    new-instance v0, Lcom/yi/internal/app/RingtonePickerSystemActivity$3;

    invoke-direct {v0, p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity$3;-><init>(Lcom/yi/internal/app/RingtonePickerSystemActivity;)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/yi/internal/app/RingtonePickerSystemActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->REQUEST_CODE_CUSTOM_RINGTONE:I

    return v0
.end method

.method static synthetic access$102(Lcom/yi/internal/app/RingtonePickerSystemActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/yi/internal/app/RingtonePickerSystemActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->playRingtone(II)V

    return-void
.end method

.method private addCustomItem(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lyi/util/IDHelper;->LAYOUT_RINGTONE_CUSTOM_ITEM:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 311
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 312
    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 301
    sget v0, Lyi/util/IDHelper;->STR_RING_DEFAULT:I

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 305
    sget v0, Lyi/util/IDHelper;->STR_RING_SILENT:I

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 294
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 295
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 296
    iget v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mStaticItemCount:I

    .line 297
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private getActualUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "type"

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, data:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 487
    :goto_0
    :pswitch_0
    if-nez v0, :cond_0

    .line 488
    const-string v0, ""

    .line 489
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 475
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/audio/notifications/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.config.notification_sound"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getUriStrByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    goto :goto_0

    .line 479
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/audio/ringtones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.config.ringtone"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getUriStrByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    goto :goto_0

    .line 483
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/audio/alarms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.config.alarm_alert"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getUriStrByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 426
    if-gez p1, :cond_0

    .line 429
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 420
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private getUriStrByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "path"

    .prologue
    .line 493
    const/4 v6, 0x0

    .line 494
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 495
    .local v7, id:Ljava/lang/String;
    const/4 v8, 0x0

    .line 497
    .local v8, uriString:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 502
    if-eqz v6, :cond_0

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 510
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 515
    :cond_2
    return-object v8

    .line 507
    :catch_0
    move-exception v0

    .line 510
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isExternalUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 546
    .local v0, ringtone:Landroid/media/Ringtone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUriValidate(Landroid/net/Uri;)Z
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 519
    const/4 v7, 0x0

    .line 520
    .local v7, filePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 522
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 525
    if-eqz v6, :cond_0

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 533
    :cond_0
    if-eqz v6, :cond_1

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    if-eqz v7, :cond_4

    invoke-direct {p0, v7}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v9

    .line 539
    :goto_1
    return v0

    .line 530
    :catch_0
    move-exception v0

    .line 533
    if-eqz v6, :cond_1

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 533
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v8

    .line 539
    goto :goto_1
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    iput p1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSampleRingtonePos:I

    .line 354
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 417
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 214
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->REQUEST_CODE_CUSTOM_RINGTONE:I

    if-ne p1, v2, :cond_2

    .line 215
    if-ne p2, v3, :cond_1

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, uri:Landroid/net/Uri;
    if-eqz p3, :cond_0

    .line 218
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #uri:Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 221
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v3, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->setResult(ILandroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->finish()V

    .line 227
    .end local v0           #resultIntent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    if-nez p2, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->finish()V

    .line 231
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lyi/util/IDHelper;->ID_OK_BUTTON:I

    if-ne v2, v3, :cond_3

    .line 317
    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, uri:Landroid/net/Uri;
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    iget v3, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtonePos:I

    if-ne v2, v3, :cond_1

    .line 322
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 330
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->setResult(ILandroid/content/Intent;)V

    .line 338
    .end local v0           #resultIntent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->finish()V

    .line 339
    return-void

    .line 323
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    iget v3, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSilentPos:I

    if-ne v2, v3, :cond_2

    .line 325
    const/4 v1, 0x0

    goto :goto_0

    .line 327
    :cond_2
    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v3, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    invoke-direct {p0, v3}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getRingtoneManagerPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 334
    .end local v1           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lyi/util/IDHelper;->ID_CANCEL_BUTTON:I

    if-ne v2, v3, :cond_0

    .line 335
    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 124
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mHasDefaultItem:Z

    .line 125
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 126
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 131
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mHasSilentItem:Z

    .line 134
    const-string v0, "sms_notification"

    invoke-virtual {v10, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSmsNotification:Z

    .line 137
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 140
    const-string v0, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 142
    .local v9, includeDrm:Z
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v9}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 145
    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 146
    .local v11, types:I
    iput v11, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mTypes:I

    .line 147
    if-eq v11, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v11}, Landroid/media/RingtoneManager;->setType(I)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mCursor:Landroid/database/Cursor;

    .line 154
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->setVolumeControlStream(I)V

    .line 157
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mExistingUri:Landroid/net/Uri;

    .line 159
    sget v0, Lyi/util/IDHelper;->LAYOUT_YI_RINGTONE:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->setContentView(I)V

    .line 161
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 162
    .local v6, Title:Ljava/lang/CharSequence;
    if-nez v6, :cond_2

    .line 163
    sget v0, Lyi/util/IDHelper;->STR_RING_PICK:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    :cond_2
    invoke-virtual {p0, v6}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    sget v0, Lyi/util/IDHelper;->ID_VOICE_LIST:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceList:Landroid/widget/ListView;

    .line 168
    sget v0, Lyi/util/IDHelper;->ID_CUSTOM_LIST:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mCustomVoiceList:Landroid/widget/ListView;

    .line 169
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mCustomVoiceList:Landroid/widget/ListView;

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->setVisibility(I)V

    .line 171
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lyi/util/IDHelper;->LAYOUT_RINGTONE_CUSTOM_ITEM:I

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceCustomAdapter:Landroid/widget/ListAdapter;

    .line 172
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mCustomVoiceList:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->addCustomItem(Landroid/widget/ListView;)V

    .line 173
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mCustomVoiceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceCustomAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mCustomVoiceList:Landroid/widget/ListView;

    new-instance v1, Lcom/yi/internal/app/RingtonePickerSystemActivity$1;

    invoke-direct {v1, p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity$1;-><init>(Lcom/yi/internal/app/RingtonePickerSystemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090012

    iget-object v3, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v12, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v4, v13

    new-array v5, v12, [I

    const v1, 0x1020014

    aput v1, v5, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceAdapter:Landroid/widget/ListAdapter;

    .line 190
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->onPrepareListView(Landroid/widget/ListView;)V

    .line 191
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceList:Landroid/widget/ListView;

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 193
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceList:Landroid/widget/ListView;

    new-instance v1, Lcom/yi/internal/app/RingtonePickerSystemActivity$2;

    invoke-direct {v1, p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity$2;-><init>(Lcom/yi/internal/app/RingtonePickerSystemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceList:Landroid/widget/ListView;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    invoke-virtual {v0, v1, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 203
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mVoiceList:Landroid/widget/ListView;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 205
    sget v0, Lyi/util/IDHelper;->ID_OK_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 206
    .local v8, buttonOK:Landroid/widget/Button;
    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget v0, Lyi/util/IDHelper;->ID_CANCEL_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 209
    .local v7, buttonCancel:Landroid/widget/Button;
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->registed:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 437
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 438
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 345
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->playRingtone(II)V

    .line 346
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 349
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 405
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->stopAnyPlayingRingtone()V

    .line 406
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 7
    .parameter "listView"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 234
    iget-boolean v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mHasDefaultItem:Z

    if-eqz v2, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v2

    iput v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtonePos:I

    .line 237
    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtonePos:I

    iput v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    .line 242
    :cond_0
    iget-boolean v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mHasSilentItem:Z

    if-eqz v2, :cond_1

    .line 243
    invoke-direct {p0, p1}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v2

    iput v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSilentPos:I

    .line 246
    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 247
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSilentPos:I

    iput v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    .line 251
    :cond_1
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 252
    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v3, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getListPosition(I)I

    move-result v2

    iput v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    .line 255
    :cond_2
    iget-boolean v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSmsNotification:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mExistingUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->isUriValidate(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    .line 281
    :cond_4
    :goto_0
    return-void

    .line 261
    :cond_5
    const/4 v1, 0x0

    .line 262
    .local v1, unmonutUri:Landroid/net/Uri;
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mTypes:I

    if-ne v2, v4, :cond_7

    .line 263
    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 272
    :cond_6
    :goto_1
    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->isExternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->isUriValidate(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 273
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mTypes:I

    invoke-direct {p0, v1, v2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getActualUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 274
    .local v0, actualUri:Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 275
    iget-object v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2, v0}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getListPosition(I)I

    move-result v2

    iput v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mClickedPos:I

    goto :goto_0

    .line 265
    .end local v0           #actualUri:Landroid/net/Uri;
    :cond_7
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mTypes:I

    if-ne v2, v5, :cond_8

    .line 266
    invoke-static {p0, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 268
    :cond_8
    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mTypes:I

    if-ne v2, v6, :cond_6

    .line 269
    invoke-static {p0, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 443
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 446
    iget-boolean v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->registed:Z

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->registed:Z

    .line 450
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 399
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->stopAnyPlayingRingtone()V

    .line 400
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 359
    iget v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    .line 360
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 370
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 374
    :cond_2
    iget v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    .line 375
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    .line 376
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 385
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 391
    :goto_1
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 388
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_4
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
