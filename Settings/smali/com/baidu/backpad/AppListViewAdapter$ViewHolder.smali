.class Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/backpad/AppListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public cb:Landroid/widget/Switch;

.field public iv:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/baidu/backpad/AppListViewAdapter;

.field public tv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/baidu/backpad/AppListViewAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 30
    iput-object p1, p0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->this$0:Lcom/baidu/backpad/AppListViewAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->cb:Landroid/widget/Switch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/backpad/AppListViewAdapter;Lcom/baidu/backpad/AppListViewAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;-><init>(Lcom/baidu/backpad/AppListViewAdapter;)V

    return-void
.end method
