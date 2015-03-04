.class Lcom/android/settings/BackpadPreference;
.super Landroid/preference/CheckBoxPreference;
.source "BackPadSettings.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 435
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 436
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 431
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 432
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 441
    const-string v2, "checkbox"

    invoke-static {v2}, Lcom/android/settings/util/IDHelper;->getIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 442
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 443
    check-cast v1, Landroid/widget/CheckBox;

    .line 444
    .local v1, s:Landroid/widget/CheckBox;
    new-instance v2, Lcom/android/settings/BackpadPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/BackpadPreference$1;-><init>(Lcom/android/settings/BackpadPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 452
    new-instance v2, Lcom/android/settings/BackpadPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/BackpadPreference$2;-><init>(Lcom/android/settings/BackpadPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    .end local v1           #s:Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method
