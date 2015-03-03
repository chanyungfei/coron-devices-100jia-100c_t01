.class public Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
.super Ljava/lang/Object;
.source "BaiduTelephonyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BaiduTelephonyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BaiduTelephonyUtils$SIMInfo$ErrorCode;
    }
.end annotation


# instance fields
.field public mCallRingTone:Ljava/lang/String;

.field public mColor:I

.field public mDataRoaming:I

.field public mDispalyNumberFormat:I

.field public mDisplayName:Ljava/lang/String;

.field public mICCId:Ljava/lang/String;

.field public mIpAutoEnable:I

.field public mIpCustomPrefix:Ljava/lang/String;

.field public mIpEnable:I

.field public mIpFirstEnable:I

.field public mIpPrefix:Ljava/lang/String;

.field public mIpSelfLocation:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimBackgroundRes:I

.field public mSimId:J

.field public mSlot:I

.field public mSmsRingTone:Ljava/lang/String;

.field public mWapPush:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mNumber:Ljava/lang/String;

    .line 210
    iput v2, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDispalyNumberFormat:I

    .line 212
    iput v3, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDataRoaming:I

    .line 213
    iput v1, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSlot:I

    .line 214
    sget-object v0, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimBackgroundRes:I

    .line 215
    iput v1, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mWapPush:I

    .line 216
    iput v1, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    .line 217
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 218
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpSelfLocation:Ljava/lang/String;

    .line 219
    iput v2, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpAutoEnable:I

    .line 220
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpCustomPrefix:Ljava/lang/String;

    .line 221
    iput v2, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpFirstEnable:I

    .line 223
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mCallRingTone:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSmsRingTone:Ljava/lang/String;

    .line 227
    return-void
.end method

.method private static fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 234
    new-instance v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    invoke-direct {v0}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;-><init>()V

    .line 235
    .local v0, info:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimId:J

    .line 236
    const-string v2, "icc_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mICCId:Ljava/lang/String;

    .line 237
    const-string v2, "display_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 238
    const-string v2, "number"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mNumber:Ljava/lang/String;

    .line 239
    const-string v2, "display_number_format"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDispalyNumberFormat:I

    .line 240
    const-string v2, "color"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mColor:I

    .line 241
    const-string v2, "data_roaming"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDataRoaming:I

    .line 242
    const-string v2, "slot"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSlot:I

    .line 243
    sget-object v2, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    array-length v1, v2

    .line 244
    .local v1, size:I
    iget v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mColor:I

    if-ltz v2, :cond_0

    iget v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mColor:I

    if-ge v2, v1, :cond_0

    .line 245
    sget-object v2, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    iget v3, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mColor:I

    aget v2, v2, v3

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSimBackgroundRes:I

    .line 247
    :cond_0
    const-string v2, "wap_push"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mWapPush:I

    .line 248
    const-string v2, "ip_enable"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    .line 249
    const-string v2, "ip_prefix"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 250
    const-string v2, "ip_self_location"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpSelfLocation:Ljava/lang/String;

    .line 251
    const-string v2, "ip_auto_enable"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpAutoEnable:I

    .line 252
    const-string v2, "ip_custom_prefix"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpCustomPrefix:Ljava/lang/String;

    .line 253
    const-string v2, "ip_first_enable"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpFirstEnable:I

    .line 255
    const-string v2, "call_ringtone"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mCallRingTone:Ljava/lang/String;

    .line 256
    const-string v2, "sms_ringtone"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSmsRingTone:Ljava/lang/String;

    .line 258
    return-object v0
.end method

.method public static getAllSIMCount(Landroid/content/Context;)I
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 474
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 475
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 478
    if-eqz v6, :cond_0

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    if-eqz v6, :cond_2

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAllSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/BaiduTelephonyUtils$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 290
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 294
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 295
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 300
    :cond_1
    if-eqz v6, :cond_2

    .line 301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_2
    return-object v7
.end method

.method private static getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I
    .locals 19
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    .line 672
    const-string v10, "SIM"

    .line 673
    .local v10, default_name:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "display_name LIKE "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .local v15, sb:Ljava/lang/StringBuilder;
    if-nez p3, :cond_1

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 679
    :goto_0
    const-string v2, " AND ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "display_name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 685
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v8, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    .line 687
    .local v13, index:I
    if-eqz v9, :cond_3

    .line 688
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 689
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 691
    .local v11, display_name:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 692
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 693
    .local v14, length:I
    const/4 v2, 0x1

    if-lt v14, v2, :cond_0

    .line 694
    add-int/lit8 v2, v14, -0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 695
    .local v16, sub:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 697
    .local v17, value:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 677
    .end local v8           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #display_name:Ljava/lang/String;
    .end local v13           #index:I
    .end local v14           #length:I
    .end local v16           #sub:Ljava/lang/String;
    .end local v17           #value:J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 702
    .restart local v8       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v13       #index:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_3
    const/4 v12, 0x1

    .local v12, i:I
    :goto_2
    const/16 v2, 0x63

    if-gt v12, v2, :cond_5

    .line 705
    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 704
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 708
    :cond_4
    move v13, v12

    .line 712
    :cond_5
    return v13
.end method

.method public static getInsertedSIMCount(Landroid/content/Context;)I
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 455
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 456
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 459
    if-eqz v6, :cond_0

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    if-eqz v6, :cond_2

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 460
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/BaiduTelephonyUtils$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 267
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    const-string v5, "slot ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 272
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 277
    :cond_1
    if-eqz v6, :cond_2

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_2
    return-object v7
.end method

.method public static getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "iccid"

    .prologue
    const/4 v2, 0x0

    .line 384
    if-nez p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-object v2

    .line 385
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "icc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 388
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 389
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 394
    if-eqz v6, :cond_0

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 394
    :cond_2
    if-eqz v6, :cond_0

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoById(Landroid/content/Context;J)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    const/4 v2, 0x0

    .line 314
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v2

    .line 315
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 319
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 324
    if-eqz v6, :cond_0

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 324
    :cond_2
    if-eqz v6, :cond_0

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 7
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    const/4 v2, 0x0

    .line 338
    if-nez p1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-object v2

    .line 339
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 343
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 348
    if-eqz v6, :cond_0

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 348
    :cond_2
    if-eqz v6, :cond_0

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    .locals 8
    .parameter "ctx"
    .parameter "cardSlot"

    .prologue
    const/4 v2, 0x0

    .line 361
    if-gez p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-object v2

    .line 362
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 366
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-static {v6}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->fromCursor(Landroid/database/Cursor;)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 371
    if-eqz v6, :cond_0

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 371
    :cond_2
    if-eqz v6, :cond_0

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMId"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 407
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v7

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 408
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "slot"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 411
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 412
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 417
    if-eqz v6, :cond_0

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 417
    :cond_2
    if-eqz v6, :cond_3

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 421
    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "SIMName"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 430
    if-nez p1, :cond_1

    move v0, v7

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "slot"

    aput-object v3, v2, v5

    const-string v3, "display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 435
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 440
    if-eqz v6, :cond_0

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 440
    :cond_2
    if-eqz v6, :cond_3

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 444
    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 441
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getSuffixFromIndex(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 666
    rem-int/lit8 v0, p0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 12
    .parameter "ctx"
    .parameter "ICCId"
    .parameter "slot"

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 608
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ICCId should not null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 612
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "icc_id=?"

    .line 613
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "slot"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 615
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 616
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 617
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "icc_id"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v1, "color"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 619
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 633
    .end local v11           #values:Landroid/content/ContentValues;
    .local v10, uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 638
    :cond_3
    return-object v10

    .line 623
    .end local v10           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 624
    .local v8, simId:J
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 625
    .local v7, oldSlot:I
    sget-object v1, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 626
    .restart local v10       #uri:Landroid/net/Uri;
    if-eq p2, v7, :cond_2

    .line 627
    new-instance v11, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 628
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    .end local v7           #oldSlot:I
    .end local v8           #simId:J
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static setCallRingTone(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "ringtone"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 794
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 795
    const/4 v1, -0x1

    .line 799
    :goto_0
    return v1

    .line 797
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 798
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "call_ringtone"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 5
    .parameter "ctx"
    .parameter "color"
    .parameter "SIMId"

    .prologue
    const/4 v4, 0x0

    .line 548
    sget-object v2, Landroid/telephony/BaiduTelephonyUtils;->SIMBackgroundRes:[I

    array-length v0, v2

    .line 549
    .local v0, size:I
    if-ltz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 552
    :goto_0
    return v2

    .line 550
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 551
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "roaming"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 579
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 582
    :goto_0
    return v1

    .line 580
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 581
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 11
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    const/4 v10, 0x0

    .line 642
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gtz v8, :cond_1

    .line 643
    const/4 v4, -0x1

    .line 659
    :cond_0
    :goto_0
    return v4

    .line 645
    :cond_1
    const-string v0, "SIM"

    .line 646
    .local v0, default_name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 647
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v8, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 648
    .local v6, uri:Landroid/net/Uri;
    if-eqz p3, :cond_2

    .line 649
    invoke-static {p0, p3, p1, p2}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v4

    .line 650
    .local v4, result:I
    if-gtz v4, :cond_0

    .line 654
    .end local v4           #result:I
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I

    move-result v2

    .line 655
    .local v2, index:I
    invoke-static {v2}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSuffixFromIndex(I)Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, suffix:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 657
    .local v7, value:Landroid/content/ContentValues;
    if-nez p3, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, display_name:Ljava/lang/String;
    :goto_1
    const-string v8, "display_name"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 657
    .end local v1           #display_name:Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "format"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 564
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 567
    :goto_0
    return v1

    .line 565
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 566
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "display_number_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 8
    .parameter "ctx"
    .parameter "displayName"
    .parameter "simId"

    .prologue
    .line 516
    const-wide/16 v4, 0x2

    .local v4, source:J
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 517
    invoke-static/range {v0 .. v5}, Lcom/mediatek/telephony/SimInfoManagerAdp;->setDisplayNameExAdp(Landroid/content/Context;Ljava/lang/String;JJ)I

    move-result v7

    .line 518
    .local v7, retValue:I
    if-lez v7, :cond_0

    .line 519
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "simid"

    invoke-virtual {v6, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    return v7
.end method

.method public static setIpAutoEnable(Landroid/content/Context;IJ)I
    .locals 5
    .parameter "ctx"
    .parameter "ipAutoEnable"
    .parameter "SIMId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 759
    if-gt p1, v3, :cond_0

    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 762
    :goto_0
    return v1

    .line 760
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 761
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_auto_enable"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpCustomPrefix(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "ipCustomPrefix"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 770
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 773
    :goto_0
    return v1

    .line 771
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 772
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_custom_prefix"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpEnable(Landroid/content/Context;IJ)I
    .locals 6
    .parameter "ctx"
    .parameter "enable"
    .parameter "SIMId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 721
    if-gt p1, v4, :cond_0

    if-lt p1, v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v1

    .line 724
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 725
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_enable"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpFirstEnable(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "ipFirstEnable"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 781
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 784
    :goto_0
    return v1

    .line 782
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 783
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_first_enable"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 784
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpPrefix(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "ipPrefix"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 737
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 740
    :goto_0
    return v1

    .line 738
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 739
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_prefix"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setIpSelfLocation(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "location"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 748
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    .line 751
    :goto_0
    return v1

    .line 749
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 750
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "ip_self_location"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "number"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 533
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 536
    :goto_0
    return v1

    .line 534
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 535
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setSMSRingTone(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "ringtone"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    .line 808
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    .line 809
    const/4 v1, -0x1

    .line 813
    :goto_0
    return v1

    .line 811
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 812
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "sms_ringtone"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setWAPPush(Landroid/content/Context;IJ)I
    .locals 6
    .parameter "ctx"
    .parameter "enable"
    .parameter "SIMId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 591
    if-gt p1, v4, :cond_0

    if-lt p1, v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v1

    .line 594
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 595
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "wap_push"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/BaiduTelephonyUtils$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
