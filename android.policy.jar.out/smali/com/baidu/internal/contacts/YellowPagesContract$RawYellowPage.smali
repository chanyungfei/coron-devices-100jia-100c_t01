.class public final Lcom/baidu/internal/contacts/YellowPagesContract$RawYellowPage;
.super Ljava/lang/Object;
.source "YellowPagesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowPagesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawYellowPage"
.end annotation


# static fields
.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "raw_yellow_page"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/baidu/internal/contacts/YellowPagesContract;->BASE_URI:Landroid/net/Uri;

    const-string v1, "raw_yellow_page"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/YellowPagesContract$RawYellowPage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
