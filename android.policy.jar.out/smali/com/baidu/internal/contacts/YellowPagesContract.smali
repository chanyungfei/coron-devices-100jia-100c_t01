.class public Lcom/baidu/internal/contacts/YellowPagesContract;
.super Ljava/lang/Object;
.source "YellowPagesContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/contacts/YellowPagesContract$Columns;,
        Lcom/baidu/internal/contacts/YellowPagesContract$Thumbnail;,
        Lcom/baidu/internal/contacts/YellowPagesContract$T9Lookup;,
        Lcom/baidu/internal/contacts/YellowPagesContract$RawYellowPage;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.baidu.providers.yellowpage"

.field public static final BASE_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final FROM_YELLOW:Ljava/lang/String; = "from_yellow"

.field public static final PROPERTY_INIT:Ljava/lang/String; = "yellow_init"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "content://com.baidu.providers.yellowpage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/YellowPagesContract;->BASE_URI:Landroid/net/Uri;

    .line 13
    sget-object v0, Lcom/baidu/internal/contacts/YellowPagesContract;->BASE_URI:Landroid/net/Uri;

    const-string v1, "yellow_pages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/YellowPagesContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method
