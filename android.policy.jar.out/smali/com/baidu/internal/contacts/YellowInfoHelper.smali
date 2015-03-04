.class public Lcom/baidu/internal/contacts/YellowInfoHelper;
.super Ljava/lang/Object;
.source "YellowInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;,
        Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;,
        Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;
    }
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMNS_FULL:[Ljava/lang/String; = null

.field public static final COLUMN_NAME:I = 0x1

.field public static final COLUMN_NUMBER:I = 0x0

.field public static final COLUMN_PHOTO:I = 0x2

.field public static final DBG:Z = true

.field public static final KEY_LISTENER:Ljava/lang/String; = "listener"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final TAG:Ljava/lang/String; = "YellowInfoHelper"

.field private static mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;


# instance fields
.field public INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

.field public INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

.field private mContext:Landroid/content/Context;

.field private mDefaultBytes:[B

.field private mResolver:Landroid/content/ContentResolver;

.field private mYellowInfoCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "thumbnail"

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS_FULL:[Ljava/lang/String;

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    .line 85
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[BI)V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 92
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[BI)V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 134
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mContext:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    .line 136
    iput-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mDefaultBytes:[B

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 139
    .local v9, res:Landroid/content/res/Resources;
    const v0, 0x108087c

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 141
    .local v7, bmp:Landroid/graphics/Bitmap;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v7, v0, v1, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 143
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mDefaultBytes:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v9           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v8

    .line 145
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "YellowInfoHelper"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->cacheInfoFromCursor(Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/contacts/YellowInfoHelper;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    return-object v0
.end method

.method private cacheInfoFromCursor(Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 13
    .parameter "c"

    .prologue
    .line 248
    if-nez p1, :cond_1

    .line 249
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 282
    :cond_0
    :goto_0
    return-object v2

    .line 252
    :cond_1
    const-string v10, "YellowInfoHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " items in cursor."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 256
    .local v2, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .local v0, columnCount:I
    move-object v3, v2

    .line 257
    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .local v3, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 258
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, number:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 260
    .local v5, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 262
    .local v7, photo:[B
    const/4 v10, 0x2

    :try_start_2
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 263
    .local v9, thumbnail:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 264
    .local v8, photoUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v10, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 265
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {p0, v4}, Lcom/baidu/internal/contacts/YellowInfoHelper;->readStream(Ljava/io/InputStream;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 269
    .end local v4           #is:Ljava/io/InputStream;
    .end local v8           #photoUri:Landroid/net/Uri;
    .end local v9           #thumbnail:Ljava/lang/String;
    :goto_2
    :try_start_3
    new-instance v2, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    invoke-direct {v2, p0, v6, v5, v7}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 271
    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :try_start_4
    const-string v10, "YellowInfoHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cache info from cursor, number = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v10, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    invoke-interface {v10, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v2

    .line 274
    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v3       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto :goto_1

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 275
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #photo:[B
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 276
    .end local v0           #columnCount:I
    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :goto_3
    :try_start_6
    const-string v10, "YellowInfoHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 278
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v0       #columnCount:I
    .restart local v3       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_2
    if-eqz p1, :cond_4

    .line 279
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto/16 :goto_0

    .line 278
    .end local v0           #columnCount:I
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz p1, :cond_3

    .line 279
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v10

    .line 278
    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v0       #columnCount:I
    .restart local v3       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto :goto_4

    .line 275
    .end local v0           #columnCount:I
    :catch_2
    move-exception v1

    goto :goto_3

    .end local v2           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v0       #columnCount:I
    .restart local v3       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_4
    move-object v2, v3

    .end local v3           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .restart local v2       #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/internal/contacts/YellowInfoHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    sget-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper;

    invoke-direct {v0, p0}, Lcom/baidu/internal/contacts/YellowInfoHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    .line 129
    :cond_0
    sget-object v0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoHelper:Lcom/baidu/internal/contacts/YellowInfoHelper;

    return-object v0
.end method

.method private queryInfoFromDatabase(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 9
    .parameter "number"

    .prologue
    .line 234
    const-string v0, "YellowInfoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryInfoFromDatabase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v8, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 236
    .local v8, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    sget-object v0, Lcom/baidu/internal/contacts/YellowPagesContract$T9Lookup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 238
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS_FULL:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    .local v6, c:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/baidu/internal/contacts/YellowInfoHelper;->cacheInfoFromCursor(Landroid/database/Cursor;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v8

    .line 240
    const-string v0, "YellowInfoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryInfoFromDatabase YellowInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 241
    :catch_0
    move-exception v7

    .line 242
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "YellowInfoHelper"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static trimNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    const-string v4, ""

    .line 302
    :goto_0
    return-object v4

    .line 294
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 296
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 297
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 298
    .local v0, chr:C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_1

    const/16 v4, 0x39

    if-gt v0, v4, :cond_1

    .line 299
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    .end local v0           #chr:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 5
    .parameter "input"

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 186
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->trimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, number:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mYellowInfoCacheMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 179
    .local v0, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    const-string v2, "YellowInfoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v0           #info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    :cond_1
    const-string v2, "YellowInfoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yellow info is not cached for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_UNKNOWN:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    goto :goto_0
.end method

.method public getThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/internal/contacts/YellowPagesContract$Thumbnail;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public queryYellowInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    .locals 5
    .parameter "input"

    .prologue
    .line 197
    const-string v2, "YellowInfoHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryYellowInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->INFO_NOT_YELLOW:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    invoke-static {p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->trimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, number:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v0

    .line 203
    .local v0, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    iget v2, v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->hasPhoto()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    :cond_2
    invoke-direct {p0, v1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->queryInfoFromDatabase(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public queryYellowInfoAsync(Ljava/lang/String;Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;)V
    .locals 10
    .parameter "input"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 215
    const-string v1, "YellowInfoHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryYellowInfoAsync "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->trimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, number:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/baidu/internal/contacts/YellowInfoHelper;->getCachedInfo(Ljava/lang/String;)Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;

    move-result-object v8

    .line 218
    .local v8, info:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;
    iget v1, v8, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;->type:I

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {p2, v8}, Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;->onComplete(Lcom/baidu/internal/contacts/YellowInfoHelper$YellowInfo;)V

    .line 231
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v1, "YellowInfoHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start async query , number = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 225
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "listener"

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "number"

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lcom/baidu/internal/contacts/YellowPagesContract$T9Lookup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 228
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;

    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/content/ContentResolver;)V

    .line 229
    .local v0, handler:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;
    const/4 v1, 0x0

    sget-object v4, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS_FULL:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readStream(Ljava/io/InputStream;)[B
    .locals 6
    .parameter "inStream"

    .prologue
    .line 306
    const/4 v3, 0x0

    .line 308
    .local v3, outSteam:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 309
    .end local v3           #outSteam:Ljava/io/ByteArrayOutputStream;
    .local v4, outSteam:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 310
    .local v0, buffer:[B
    const/4 v2, -0x1

    .line 311
    .local v2, len:I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 312
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 314
    .end local v0           #buffer:[B
    .end local v2           #len:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 315
    .end local v4           #outSteam:Ljava/io/ByteArrayOutputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #outSteam:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    if-eqz v3, :cond_0

    .line 319
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 321
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 326
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :goto_3
    return-object v5

    .line 318
    .end local v3           #outSteam:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #len:I
    .restart local v4       #outSteam:Ljava/io/ByteArrayOutputStream;
    :cond_1
    if-eqz v4, :cond_2

    .line 319
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 321
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 324
    .end local v4           #outSteam:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #outSteam:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 322
    .end local v3           #outSteam:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #outSteam:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v1

    .line 323
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 325
    .end local v4           #outSteam:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #outSteam:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 322
    .end local v0           #buffer:[B
    .end local v2           #len:I
    .local v1, e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 323
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 317
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 318
    :goto_4
    if-eqz v3, :cond_3

    .line 319
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 321
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 324
    :goto_5
    throw v5

    .line 322
    :catch_3
    move-exception v1

    .line 323
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 326
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 317
    .end local v3           #outSteam:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #outSteam:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #outSteam:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #outSteam:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 314
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public startCacheAllInfo(Lcom/baidu/internal/contacts/YellowInfoHelper$OnCompleteListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 156
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "listener"

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "number"

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v3, Lcom/baidu/internal/contacts/YellowPagesContract;->CONTENT_URI:Landroid/net/Uri;

    .line 160
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;

    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowInfoHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;-><init>(Lcom/baidu/internal/contacts/YellowInfoHelper;Landroid/content/ContentResolver;)V

    .line 161
    .local v0, handler:Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;
    const/4 v1, 0x0

    sget-object v4, Lcom/baidu/internal/contacts/YellowInfoHelper;->COLUMNS:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/internal/contacts/YellowInfoHelper$YellowQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method
