.class Lcom/android/settings/BackPadSettings$1;
.super Ljava/lang/Object;
.source "BackPadSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackPadSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BackPadSettings;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/settings/BackPadSettings;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/BackPadSettings$1;->this$0:Lcom/android/settings/BackPadSettings;

    iput-object p2, p0, Lcom/android/settings/BackPadSettings$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/BackPadSettings$PackageItem;

    .line 268
    .local v1, info:Lcom/android/settings/BackPadSettings$PackageItem;
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$1;->this$0:Lcom/android/settings/BackPadSettings;

    iget-object v3, v3, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    iget-object v4, v1, Lcom/android/settings/BackPadSettings$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/android/settings/BackpadDetailsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$1;->this$0:Lcom/android/settings/BackPadSettings;

    iget-object v3, v3, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    iget-object v4, v1, Lcom/android/settings/BackPadSettings$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/settings/BackpadDetailsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, v1, Lcom/android/settings/BackPadSettings$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v3, v1, Lcom/android/settings/BackPadSettings$PackageItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, value:Ljava/lang/String;
    const-string v3, "BackPadSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putString to SettingsProvider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$1;->this$0:Lcom/android/settings/BackPadSettings;

    invoke-virtual {v3}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_pad_call_application_details"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 279
    return-void
.end method
