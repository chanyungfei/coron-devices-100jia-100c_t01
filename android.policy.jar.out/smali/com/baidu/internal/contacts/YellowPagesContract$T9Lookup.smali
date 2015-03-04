.class public final Lcom/baidu/internal/contacts/YellowPagesContract$T9Lookup;
.super Ljava/lang/Object;
.source "YellowPagesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowPagesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "T9Lookup"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DIGITS:Ljava/lang/String; = "digits"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PINYIN:Ljava/lang/String; = "pinyin"

.field public static final STARTS:Ljava/lang/String; = "starts"

.field public static final TABLE_NAME:Ljava/lang/String; = "t9_lookup"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final YELLOW_PAGE_ID:Ljava/lang/String; = "yellow_page_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/baidu/internal/contacts/YellowPagesContract;->BASE_URI:Landroid/net/Uri;

    const-string v1, "t9_lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/internal/contacts/YellowPagesContract$T9Lookup;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
