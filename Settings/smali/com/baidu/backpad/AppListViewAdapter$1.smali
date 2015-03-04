.class Lcom/baidu/backpad/AppListViewAdapter$1;
.super Ljava/lang/Object;
.source "AppListViewAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/backpad/AppListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/backpad/AppListViewAdapter;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/baidu/backpad/AppListViewAdapter;ILcom/baidu/backpad/AppListViewAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/backpad/AppListViewAdapter$1;->this$0:Lcom/baidu/backpad/AppListViewAdapter;

    iput p2, p0, Lcom/baidu/backpad/AppListViewAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/baidu/backpad/AppListViewAdapter$1;->val$viewHolder:Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter$1;->this$0:Lcom/baidu/backpad/AppListViewAdapter;

    #getter for: Lcom/baidu/backpad/AppListViewAdapter;->mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;
    invoke-static {v0}, Lcom/baidu/backpad/AppListViewAdapter;->access$200(Lcom/baidu/backpad/AppListViewAdapter;)Lcom/baidu/backpad/BackpadControllManager;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter$1;->this$0:Lcom/baidu/backpad/AppListViewAdapter;

    #getter for: Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/backpad/AppListViewAdapter;->access$100(Lcom/baidu/backpad/AppListViewAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/baidu/backpad/AppListViewAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/backpad/AppListViewAdapter$1;->val$viewHolder:Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;

    iget-object v2, v2, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->cb:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/backpad/BackpadControllManager;->setEnabled(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method
