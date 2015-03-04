.class public Lcom/android/settings/BackPadSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BackPadSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BackPadSettings$SettingsObserver;,
        Lcom/android/settings/BackPadSettings$ViewHolder;,
        Lcom/android/settings/BackPadSettings$PackageAdapter;,
        Lcom/android/settings/BackPadSettings$PackageItem;
    }
.end annotation


# static fields
.field private static final BACK_PAD_AWAKE_PREF:Ljava/lang/String; = "backpad_awake"

.field private static final BACK_PAD_CALL_APP:Ljava/lang/String; = "backpad_call_application"

.field private static final BACK_PAD_CALL_APP_DETAILS:Ljava/lang/String; = "backpad_call_application_details"

.field private static final BACK_PAD_CALL_CAMERA:Ljava/lang/String; = "backpad_call_camera"

.field private static final BACK_PAD_ENABLE_PREF:Ljava/lang/String; = "backpad_enable"

.field private static final BACK_PAD_UNLOCK_PREF:Ljava/lang/String; = "backpad_unlock"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_APPLICATION:Ljava/lang/String; = "com.baidu.gallery3d|com.baidu.camera.Camera"

.field private static final TAG:Ljava/lang/String; = "BackPadSettings"


# instance fields
.field mAwakePref:Landroid/preference/CheckBoxPreference;

.field private mBackPadAwake:Z

.field private mBackPadCallApplication:Z

.field private mBackPadCallCamera:Z

.field private mBackPadEnable:Z

.field private mBackPadUnlock:Z

.field mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

.field mCallApplicationPref:Landroid/preference/CheckBoxPreference;

.field mCallCameraPref:Landroid/preference/CheckBoxPreference;

.field mEnablePref:Landroid/preference/CheckBoxPreference;

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPackageAdapter:Lcom/android/settings/BackPadSettings$PackageAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Package;",
            ">;"
        }
    .end annotation
.end field

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mSettingsObserver:Lcom/android/settings/BackPadSettings$SettingsObserver;

.field mUnlockPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 400
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BackPadSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/BackPadSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/BackPadSettings;->mBackPadEnable:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/BackPadSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/settings/BackPadSettings;->mBackPadEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/BackPadSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/BackPadSettings;->setPrefsEnabled(Z)V

    return-void
.end method

.method private getResolveInfoFromString(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, 0x0

    .line 187
    const/4 v7, 0x0

    .line 188
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_1

    .line 189
    const-string v8, "\\|"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, infos:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v0, v3

    .line 191
    .local v2, i:Ljava/lang/String;
    const-string v8, "BackPadSettings"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v2           #i:Ljava/lang/String;
    :cond_0
    array-length v8, v4

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    .line 194
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    new-instance v1, Landroid/content/ComponentName;

    aget-object v8, v4, v10

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    iget-object v8, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v8, :cond_1

    .line 199
    iget-object v8, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v5, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 203
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v3           #i$:I
    .end local v4           #infos:[Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #len$:I
    :cond_1
    return-object v7
.end method

.method private refreshPref()V
    .locals 6

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 147
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 149
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "backpad_enable"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/BackPadSettings;->mEnablePref:Landroid/preference/CheckBoxPreference;

    .line 151
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mEnablePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadEnable:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    const-string v2, "backpad_awake"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/BackPadSettings;->mAwakePref:Landroid/preference/CheckBoxPreference;

    .line 154
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mAwakePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mAwakePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadAwake:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    const-string v2, "backpad_unlock"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/BackPadSettings;->mUnlockPref:Landroid/preference/CheckBoxPreference;

    .line 158
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mUnlockPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mUnlockPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadUnlock:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mUnlockPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadAwake:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 162
    const-string v2, "backpad_call_camera"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallCameraPref:Landroid/preference/CheckBoxPreference;

    .line 163
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallCameraPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallCameraPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallCamera:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    const-string v2, "backpad_call_application"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationPref:Landroid/preference/CheckBoxPreference;

    .line 167
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallApplication:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    const-string v2, "backpad_call_application_details"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/BackpadDetailsPreference;

    iput-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    .line 171
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    iget-object v3, p0, Lcom/android/settings/BackPadSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/BackpadDetailsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    iget-object v3, p0, Lcom/android/settings/BackPadSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/BackpadDetailsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallApplication:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/BackpadDetailsPreference;->setEnabled(Z)V

    .line 184
    iget-boolean v2, p0, Lcom/android/settings/BackPadSettings;->mBackPadEnable:Z

    invoke-direct {p0, v2}, Lcom/android/settings/BackPadSettings;->setPrefsEnabled(Z)V

    .line 185
    return-void

    .line 176
    :cond_1
    const-string v2, "com.baidu.gallery3d|com.baidu.camera.Camera"

    invoke-direct {p0, v2}, Lcom/android/settings/BackPadSettings;->getResolveInfoFromString(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/BackPadSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 177
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/BackPadSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, #com.android.settings:string@backpad_call_application_details_default#t

    invoke-virtual {p0, v4}, Lcom/android/settings/BackPadSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/BackpadDetailsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    iget-object v3, p0, Lcom/android/settings/BackPadSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/BackpadDetailsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPrefsEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mAwakePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 238
    iget-object v3, p0, Lcom/android/settings/BackPadSettings;->mUnlockPref:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BackPadSettings;->mBackPadAwake:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mCallCameraPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallApplication:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/BackpadDetailsPreference;->setEnabled(Z)V

    .line 242
    return-void

    :cond_0
    move v0, v2

    .line 238
    goto :goto_0

    :cond_1
    move v1, v2

    .line 241
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-string v3, "BackPadSettings"

    const-string v6, "onCreate"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const v3, #com.android.settings:xml@backpad_settings#t

    invoke-virtual {p0, v3}, Lcom/android/settings/BackPadSettings;->addPreferencesFromResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v1, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BackPadSettings;->mInstalledPackages:Ljava/util/List;

    .line 102
    new-instance v3, Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v6, p0, Lcom/android/settings/BackPadSettings;->mInstalledPackages:Ljava/util/List;

    invoke-direct {v3, p0, v6}, Lcom/android/settings/BackPadSettings$PackageAdapter;-><init>(Lcom/android/settings/BackPadSettings;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/settings/BackPadSettings;->mPackageAdapter:Lcom/android/settings/BackPadSettings$PackageAdapter;

    .line 103
    iget-object v3, p0, Lcom/android/settings/BackPadSettings;->mPackageAdapter:Lcom/android/settings/BackPadSettings$PackageAdapter;

    invoke-virtual {v3}, Lcom/android/settings/BackPadSettings$PackageAdapter;->update()V

    .line 104
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/settings/BackPadSettings;->mPackages:Ljava/util/Map;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "back_pad_enable"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadEnable:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "back_pad_awake"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadAwake:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "back_pad_unlock"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadUnlock:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "back_pad_call_camera"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallCamera:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "back_pad_call_application"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    :goto_4
    iput-boolean v4, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallApplication:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_pad_call_application_details"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, backPadCallApplicationDetails:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/BackPadSettings;->getResolveInfoFromString(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/BackPadSettings;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 115
    invoke-direct {p0}, Lcom/android/settings/BackPadSettings;->refreshPref()V

    .line 120
    return-void

    .end local v0           #backPadCallApplicationDetails:Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 107
    goto :goto_0

    :cond_1
    move v3, v5

    .line 108
    goto :goto_1

    :cond_2
    move v3, v5

    .line 109
    goto :goto_2

    :cond_3
    move v3, v5

    .line 110
    goto :goto_3

    :cond_4
    move v4, v5

    .line 111
    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 254
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 258
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 259
    .local v2, list:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/settings/BackPadSettings;->mPackageAdapter:Lcom/android/settings/BackPadSettings$PackageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    const v3, #com.android.settings:string@profile_choose_app#t

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 263
    .restart local v1       #dialog:Landroid/app/Dialog;
    new-instance v3, Lcom/android/settings/BackPadSettings$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/BackPadSettings$1;-><init>(Lcom/android/settings/BackPadSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mSettingsObserver:Lcom/android/settings/BackPadSettings$SettingsObserver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mSettingsObserver:Lcom/android/settings/BackPadSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/BackPadSettings$SettingsObserver;->stopObserving()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/BackPadSettings;->mSettingsObserver:Lcom/android/settings/BackPadSettings$SettingsObserver;

    .line 142
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 209
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, key:Ljava/lang/String;
    const-string v3, "backpad_enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    .end local p2
    :cond_0
    :goto_0
    return v2

    .line 215
    .restart local p2
    :cond_1
    const-string v3, "backpad_awake"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadAwake:Z

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_pad_awake"

    iget-boolean v5, p0, Lcom/android/settings/BackPadSettings;->mBackPadAwake:Z

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v1, p0, Lcom/android/settings/BackPadSettings;->mUnlockPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadAwake:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 220
    .restart local p2
    :cond_3
    const-string v3, "backpad_unlock"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 221
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadUnlock:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_pad_unlock"

    iget-boolean v5, p0, Lcom/android/settings/BackPadSettings;->mBackPadUnlock:Z

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 224
    .restart local p2
    :cond_5
    const-string v3, "backpad_call_camera"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 225
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallCamera:Z

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_pad_call_camera"

    iget-boolean v5, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallCamera:Z

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 228
    .restart local p2
    :cond_7
    const-string v3, "backpad_call_application"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallApplication:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_pad_call_application"

    iget-boolean v5, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallApplication:Z

    if-eqz v5, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v1, p0, Lcom/android/settings/BackPadSettings;->mCallApplicationDetailsPref:Lcom/android/settings/BackpadDetailsPreference;

    iget-boolean v3, p0, Lcom/android/settings/BackPadSettings;->mBackPadCallApplication:Z

    invoke-virtual {v1, v3}, Lcom/android/settings/BackpadDetailsPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 245
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, key:Ljava/lang/String;
    const-string v2, "backpad_call_application_details"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/settings/BackPadSettings;->showDialog(I)V

    .line 250
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 124
    const-string v0, "BackPadSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mSettingsObserver:Lcom/android/settings/BackPadSettings$SettingsObserver;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/settings/BackPadSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/BackPadSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/BackPadSettings$SettingsObserver;-><init>(Lcom/android/settings/BackPadSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/BackPadSettings;->mSettingsObserver:Lcom/android/settings/BackPadSettings$SettingsObserver;

    .line 130
    iget-object v0, p0, Lcom/android/settings/BackPadSettings;->mSettingsObserver:Lcom/android/settings/BackPadSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/BackPadSettings$SettingsObserver;->startObserving()V

    .line 132
    :cond_0
    return-void
.end method
