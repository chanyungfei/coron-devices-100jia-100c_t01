.class Lcom/android/settings/BackpadDetailsPreference;
.super Landroid/preference/Preference;
.source "BackPadSettings.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 469
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 470
    const v0, #com.android.settings:layout@preference_backpad_icon#t

    invoke-virtual {p0, v0}, Lcom/android/settings/BackpadDetailsPreference;->setLayoutResource(I)V

    .line 471
    return-void
.end method
