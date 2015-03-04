.class Lcom/baidu/backpad/BackpadAppSettings$1;
.super Landroid/os/Handler;
.source "BackpadAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/backpad/BackpadAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/backpad/BackpadAppSettings;


# direct methods
.method constructor <init>(Lcom/baidu/backpad/BackpadAppSettings;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$000(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$100(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mBackpadEnabled:Z
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$200(Lcom/baidu/backpad/BackpadAppSettings;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mAppAdapter:Lcom/baidu/backpad/AppListViewAdapter;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$300(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/AppListViewAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/backpad/AppListViewAdapter;->update(Ljava/util/ArrayList;)V

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$400(Lcom/baidu/backpad/BackpadAppSettings;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$100(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mEmpty:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/backpad/BackpadAppSettings;->access$500(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$500(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/TextView;

    move-result-object v0

    const v1, #com.android.settings:string@apps_empty#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mBackpadEnabled:Z
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$200(Lcom/baidu/backpad/BackpadAppSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$100(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mEmpty:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/backpad/BackpadAppSettings;->access$500(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$500(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/TextView;

    move-result-object v0

    const v1, #com.android.settings:string@backpad_disable_msg#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    :cond_2
    return-void

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mAppAdapter:Lcom/baidu/backpad/AppListViewAdapter;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$300(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/AppListViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings$1;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/baidu/backpad/BackpadAppSettings;->access$400(Lcom/baidu/backpad/BackpadAppSettings;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/backpad/AppListViewAdapter;->update(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
