.class public Lcom/baidu/backpad/AppListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;

.field private mContext:Landroid/app/Activity;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p1, p0, Lcom/baidu/backpad/AppListViewAdapter;->mContext:Landroid/app/Activity;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    invoke-static {p1}, Lcom/baidu/backpad/BackpadControllManager;->getInstance(Landroid/content/Context;)Lcom/baidu/backpad/BackpadControllManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter;->mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/backpad/AppListViewAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/backpad/AppListViewAdapter;)Lcom/baidu/backpad/BackpadControllManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter;->mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 62
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 68
    if-nez p2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/baidu/backpad/AppListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v2, #com.android.settings:layout@access_app_item#h

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    :cond_0
    new-instance v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;-><init>(Lcom/baidu/backpad/AppListViewAdapter;Lcom/baidu/backpad/AppListViewAdapter$1;)V

    .line 73
    .local v0, viewHolder:Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    const v1, #com.android.settings:id@appName#t

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 76
    const v1, #com.android.settings:id@appIcon#t

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 78
    iget-object v1, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 79
    iget-object v2, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/baidu/backpad/AppListViewAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    iget-object v1, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 83
    iget-object v2, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/baidu/backpad/AppListViewAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_2
    const v1, #com.android.settings:id@item_cb#t

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->cb:Landroid/widget/Switch;

    .line 88
    iget-object v1, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->cb:Landroid/widget/Switch;

    new-instance v2, Lcom/baidu/backpad/AppListViewAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/baidu/backpad/AppListViewAdapter$1;-><init>(Lcom/baidu/backpad/AppListViewAdapter;ILcom/baidu/backpad/AppListViewAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    iget-object v2, v0, Lcom/baidu/backpad/AppListViewAdapter$ViewHolder;->cb:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/baidu/backpad/AppListViewAdapter;->mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;

    iget-object v1, p0, Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/baidu/backpad/BackpadControllManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 99
    return-object p2
.end method

.method public update(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, inputDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iput-object p1, p0, Lcom/baidu/backpad/AppListViewAdapter;->mDataList:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0}, Lcom/baidu/backpad/AppListViewAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method
