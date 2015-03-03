.class Lcom/android/server/AlarmManagerService$BaiduInjector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# static fields
.field static INTERVAL:J

.field static RANGE:Ljava/lang/String;

.field static isEnabled:Z

.field static mURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 202
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->INTERVAL:J

    .line 203
    const-string v0, "0:0:0:0"

    sput-object v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->RANGE:Ljava/lang/String;

    .line 204
    const-string v0, "content://com.baidu.alarmalign.whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->mURI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddInterval(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alarm_align_interval"

    sget-wide v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->INTERVAL:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAddInterval(Landroid/content/Context;IJLjava/util/ArrayList;)J
    .locals 15
    .parameter "context"
    .parameter "type"
    .parameter "seconds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 292
    .local p4, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const-wide/16 v8, -0x1

    .line 293
    .local v8, now:J
    if-nez p1, :cond_4

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 298
    :goto_0
    invoke-static {p0}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v3

    .line 299
    .local v3, interval:J
    const-wide/16 v11, 0x3e8

    mul-long/2addr v11, v3

    invoke-static {v8, v9, v11, v12}, Lcom/android/server/AlarmManagerService$BaiduInjector;->next(JJ)J

    move-result-wide v6

    .line 301
    .local v6, next:J
    const-wide/16 v11, 0x3e8

    div-long v11, v6, v11

    cmp-long v11, p2, v11

    if-gez v11, :cond_8

    if-eqz p4, :cond_8

    .line 302
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 303
    const-string v11, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAddInterval type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " seconds: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 307
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v10, 0x0

    .line 308
    .local v10, pre:Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v2, 0x0

    .line 309
    .local v2, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 310
    move-object v10, v2

    .line 311
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 312
    .restart local v2       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v11, v11, v6

    if-lez v11, :cond_5

    .line 322
    :cond_2
    if-eqz v10, :cond_7

    .line 323
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 324
    const-string v11, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAddInterval hit: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_3
    const-wide/16 v11, 0x3e8

    div-long v11, v6, v11

    sub-long v11, v11, p2

    .line 331
    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v10           #pre:Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return-wide v11

    .line 296
    .end local v3           #interval:J
    .end local v6           #next:J
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    goto/16 :goto_0

    .line 314
    .restart local v2       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v3       #interval:J
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v6       #next:J
    .restart local v10       #pre:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5
    invoke-static {p0, v2}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 315
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 316
    const-string v11, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAddInterval white app "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_6
    iget-wide v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    sub-long v11, v11, p2

    goto :goto_1

    .line 328
    :cond_7
    const-wide/16 v11, 0x0

    goto :goto_1

    .line 331
    .end local v2           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v10           #pre:Lcom/android/server/AlarmManagerService$Alarm;
    :cond_8
    const-wide/16 v11, 0x0

    goto :goto_1
.end method

.method public static hitRange(Ljava/lang/String;)Z
    .locals 14
    .parameter "rangeStr"

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 380
    if-nez p0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v9

    .line 384
    :cond_1
    const-string v10, ":"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, res:[Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 389
    aget-object v10, v4, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 390
    .local v6, startHourOfDay:I
    aget-object v10, v4, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 391
    .local v7, startMinute:I
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 392
    .local v1, endHourOfDay:I
    const/4 v10, 0x3

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 393
    .local v2, endMinute:I
    if-ne v6, v1, :cond_2

    if-eq v7, v2, :cond_0

    .line 396
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 398
    .local v3, now:Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 399
    .local v5, start:Ljava/util/Calendar;
    invoke-virtual {v5, v12, v6}, Ljava/util/Calendar;->set(II)V

    .line 400
    invoke-virtual {v5, v13, v7}, Ljava/util/Calendar;->set(II)V

    .line 402
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 403
    .local v0, end:Ljava/util/Calendar;
    invoke-virtual {v0, v12, v1}, Ljava/util/Calendar;->set(II)V

    .line 404
    invoke-virtual {v0, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 406
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 407
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move v8, v9

    :cond_4
    move v9, v8

    goto :goto_0

    .line 409
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_6
    move v9, v8

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 209
    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    .line 248
    :goto_0
    return v2

    .line 213
    :cond_0
    invoke-static {p0}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 214
    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    goto :goto_0

    .line 218
    :cond_1
    sput-boolean v3, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_range"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, range:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 221
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const-string v2, "AlarmManager"

    const-string v4, "the whole day"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v2, v3

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    invoke-static {v1}, Lcom/android/server/AlarmManagerService$BaiduInjector;->hitRange(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 228
    const-string v2, "AlarmManager"

    const-string v4, "hit Range "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v2, v3

    .line 230
    goto :goto_0

    .line 232
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_when_screen_off"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_8

    .line 233
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 234
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_7

    .line 235
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 236
    const-string v2, "AlarmManager"

    const-string v4, "The screen is off. "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v2, v3

    .line 238
    goto :goto_0

    .line 240
    :cond_7
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 241
    const-string v3, "AlarmManager"

    const-string v4, "The screen is on."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_8
    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    goto :goto_0
.end method

.method public static isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 11
    .parameter "context"
    .parameter "alarm"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 252
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, pkg:Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get white app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v9

    .line 277
    :goto_0
    return v1

    .line 260
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 261
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/AlarmManagerService$BaiduInjector;->mURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "pkg = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 266
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get white app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v9

    .line 269
    goto :goto_0

    .line 271
    :cond_3
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get no white app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v1, v10

    .line 274
    goto :goto_0

    .line 276
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    move v1, v10

    .line 277
    goto :goto_0
.end method

.method public static next(JJ)J
    .locals 4
    .parameter "now"
    .parameter "interval"

    .prologue
    .line 372
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 375
    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    add-long v0, p0, p2

    rem-long v2, p0, p2

    sub-long p0, v0, v2

    goto :goto_0
.end method

.method public static setLockAgain(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;I)V
    .locals 9
    .parameter "service"
    .parameter "alarm"
    .parameter "index"

    .prologue
    .line 336
    if-nez p2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_2

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 341
    .local v0, isWakeUp:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 345
    sget-boolean v4, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    .line 346
    .local v4, preStatus:Z
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 347
    .local v3, nowEnabled:Z
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 348
    #calls: Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0

    .line 340
    .end local v0           #isWakeUp:Z
    .end local v3           #nowEnabled:Z
    .end local v4           #preStatus:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 352
    .restart local v0       #isWakeUp:Z
    .restart local v3       #nowEnabled:Z
    .restart local v4       #preStatus:Z
    :cond_4
    if-eqz v3, :cond_0

    .line 357
    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_6

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 363
    .local v1, now:J
    :goto_2
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-eqz v5, :cond_0

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Lcom/android/server/AlarmManagerService$BaiduInjector;->next(JJ)J

    move-result-wide v5

    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 364
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 365
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLockAgain: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_5
    #calls: Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    goto :goto_0

    .line 360
    .end local v1           #now:J
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .restart local v1       #now:J
    goto :goto_2
.end method
