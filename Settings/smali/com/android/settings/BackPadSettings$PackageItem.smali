.class Lcom/android/settings/BackPadSettings$PackageItem;
.super Ljava/lang/Object;
.source "BackPadSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BackPadSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/BackPadSettings$PackageItem;",
        ">;"
    }
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field name:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/BackPadSettings;

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/BackPadSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/settings/BackPadSettings$PackageItem;->this$0:Lcom/android/settings/BackPadSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/BackPadSettings$PackageItem;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/BackPadSettings$PackageItem;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/BackPadSettings$PackageItem;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lcom/android/settings/BackPadSettings$PackageItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/BackPadSettings$PackageItem;->compareTo(Lcom/android/settings/BackPadSettings$PackageItem;)I

    move-result v0

    return v0
.end method
