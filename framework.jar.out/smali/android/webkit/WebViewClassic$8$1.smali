.class Landroid/webkit/WebViewClassic$8$1;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$8;

.field final synthetic val$p:Landroid/graphics/Picture;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$8;Landroid/graphics/Picture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2629
    iput-object p1, p0, Landroid/webkit/WebViewClassic$8$1;->this$1:Landroid/webkit/WebViewClassic$8;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$8$1;->val$p:Landroid/graphics/Picture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2632
    iget-object v0, p0, Landroid/webkit/WebViewClassic$8$1;->this$1:Landroid/webkit/WebViewClassic$8;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$8;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$8$1;->val$p:Landroid/graphics/Picture;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$8$1;->this$1:Landroid/webkit/WebViewClassic$8;

    iget-object v2, v2, Landroid/webkit/WebViewClassic$8;->val$copy:Landroid/os/Bundle;

    #calls: Landroid/webkit/WebViewClassic;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewClassic;->access$2100(Landroid/webkit/WebViewClassic;Landroid/graphics/Picture;Landroid/os/Bundle;)V

    .line 2633
    return-void
.end method