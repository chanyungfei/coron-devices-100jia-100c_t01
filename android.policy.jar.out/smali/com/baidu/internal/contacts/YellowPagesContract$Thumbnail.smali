.class public final Lcom/baidu/internal/contacts/YellowPagesContract$Thumbnail;
.super Ljava/lang/Object;
.source "YellowPagesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowPagesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thumbnail"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/baidu/internal/contacts/YellowPagesContract;->BASE_URI:Landroid/net/Uri;

    const-string v1, "thumbnail"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/YellowPagesContract$Thumbnail;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
