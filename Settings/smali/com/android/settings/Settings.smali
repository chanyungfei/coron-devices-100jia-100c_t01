.class public Lcom/android/settings/Settings;
.super Lcom/android/settings/SwapNaviBaseActivity;
.source "Settings.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$SettingsBackPressedListenner;,
        Lcom/android/settings/Settings$BackPadSettings;,
        Lcom/android/settings/Settings$AccessSettings;,
        Lcom/android/settings/Settings$UsbSettingsActivity;,
        Lcom/android/settings/Settings$ManageApplicationsAutoStartActivity;,
        Lcom/android/settings/Settings$PowerTimerSettingsActivity;,
        Lcom/android/settings/Settings$AlarmAlignSettingsActivity;,
        Lcom/android/settings/Settings$PreferredApplicationsSettings;,
        Lcom/android/settings/Settings$CommonLockScreenSettingsActivity;,
        Lcom/android/settings/Settings$TimeZoneSettingsActivity;,
        Lcom/android/settings/Settings$WallPaperSettingsActivity;,
        Lcom/android/settings/Settings$BatteryUsageSettingsActivity;,
        Lcom/android/settings/Settings$DreamSettingsActivity;,
        Lcom/android/settings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/settings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings/Settings$RootPermissionSettingsActivity;,
        Lcom/android/settings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsInAddAccountActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings/Settings$PowerMainActivity;,
        Lcom/android/settings/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/settings/Settings$RunningServicesActivity;,
        Lcom/android/settings/Settings$PrivacySettingsActivity;,
        Lcom/android/settings/Settings$LocationSettingsActivity;,
        Lcom/android/settings/Settings$SecuritySettingsActivity;,
        Lcom/android/settings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings/Settings$StorageUseActivity;,
        Lcom/android/settings/Settings$ManageApplicationsActivity;,
        Lcom/android/settings/Settings$ApplicationSettingsActivity;,
        Lcom/android/settings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings/Settings$DisplaySettingsActivity;,
        Lcom/android/settings/Settings$SoundSettingsActivity;,
        Lcom/android/settings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings/Settings$LocalePickerActivity;,
        Lcom/android/settings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings/Settings$InputMethodAndSubtypeEnablerActivity;,
        Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings/Settings$WifiSettingsActivity;,
        Lcom/android/settings/Settings$StorageSettingsActivity;,
        Lcom/android/settings/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings/Settings$VpnSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity;,
        Lcom/android/settings/Settings$WirelessSettingsActivity;,
        Lcom/android/settings/Settings$BluetoothSettingsActivity;,
        Lcom/android/settings/Settings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATEPKG_NOTSELECTED:Ljava/lang/String; = "com.baidu.action.ota.UPDATEPKG_NOTSELECTED"

.field private static final ACTION_UPDATEPKG_SELECTED:Ljava/lang/String; = "com.baidu.action.ota.UPDATEPKG_SELECTED"

.field private static final EXTRA_CLEAR_UI_OPTIONS:Ljava/lang/String; = "settings:remove_ui_options"

.field private static final EXTRA_PKG_VERSION:Ljava/lang/String; = "com.baidu.extra.ota.pkgversion"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final META_DATA_KEY_HEADER_ID:Ljava/lang/String; = "com.android.settings.TOP_LEVEL_HEADER_ID"

.field private static final META_DATA_KEY_PARENT_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_CLASS"

.field private static final META_DATA_KEY_PARENT_TITLE:Ljava/lang/String; = "com.android.settings.PARENT_FRAGMENT_TITLE"

.field private static final SAVE_KEY_CURRENT_HEADER:Ljava/lang/String; = "com.android.settings.CURRENT_HEADER"

.field private static final SAVE_KEY_PARENT_HEADER:Ljava/lang/String; = "com.android.settings.PARENT_HEADER"

.field private static final UPDATE_HEADER_CATEGORY_ID:J = -0x70000000L

.field private static final UPDATE_HEADER_ID:J = -0x6fffffffL

.field private static simList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/BaiduTelephonyUtils$SIMInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mAirReceiver:Landroid/content/BroadcastReceiver;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field mListenner:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/settings/Settings$SettingsBackPressedListenner;",
            ">;"
        }
    .end annotation
.end field

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mSetupWizardMode:Z

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/SwapNaviBaseActivity;-><init>()V

    .line 118
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 1111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mListenner:Ljava/util/HashSet;

    .line 1143
    new-instance v0, Lcom/android/settings/Settings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$4;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mAirReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 118
    :array_0
    .array-data 0x4
        #com.android.settings:id@wireless_section#a
        #com.android.settings:id@wifi_settings#a
        #com.android.settings:id@bluetooth_settings#a
        #com.android.settings:id@data_usage_settings#a
        #com.android.settings:id@wireless_settings#a
        #com.android.settings:id@device_section#a
        #com.android.settings:id@sound_settings#a
        #com.android.settings:id@display_settings#a
        #com.android.settings:id@storage_settings#a
        #com.android.settings:id@application_settings#a
        #com.android.settings:id@battery_settings#a
        #com.android.settings:id@personal_section#a
        #com.android.settings:id@location_settings#a
        #com.android.settings:id@security_settings#a
        #com.android.settings:id@language_settings#a
        #com.android.settings:id@user_settings#a
        #com.android.settings:id@account_settings#a
        #com.android.settings:id@account_add#a
        #com.android.settings:id@system_section#a
        #com.android.settings:id@date_time_settings#a
        #com.android.settings:id@about_settings#a
        #com.android.settings:id@accessibility_settings#a
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/settings/Settings;->simList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/settings/Settings;->getPcenterIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 742
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 744
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 761
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 745
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 746
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 749
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 750
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 752
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 753
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 754
    if-eqz v2, :cond_0

    .line 755
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getPcenterHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 7

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 637
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 639
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v4, "com.baidu.account"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 644
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x0

    .line 653
    :goto_1
    return-object v0

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 647
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 648
    .local v0, accHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 649
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 651
    iget-object v4, v0, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "account_type"

    const-string v6, "com.baidu"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {p0}, Lcom/android/settings/Settings;->getPcenterIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_1
.end method

.method private static getPcenterIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 666
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/android/settings/Settings;->getPcenterIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 667
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 668
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 669
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 670
    .local v1, match:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 672
    .end local v1           #match:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getPcenterIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.account.intent.action.PCENTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    const/high16 v1, #android:id@background#h0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 661
    return-object v0
.end method

.method private getUpdateVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    const-string v1, ""

    .line 534
    .local v1, version:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 535
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 536
    const-string v2, "com.baidu.extra.ota.pkgversion"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    :cond_0
    return-object v1
.end method

.method private hasUpdatePackage()Z
    .locals 4

    .prologue
    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, hasUpdate:Z
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 517
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 518
    const-string v3, "com.baidu.extra.ota.pkgversion"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, version:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 521
    .end local v2           #version:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 519
    .restart local v2       #version:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 348
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 355
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private hockBackPressed()Z
    .locals 2

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/android/settings/Settings;->mListenner:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1120
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/Settings$SettingsBackPressedListenner;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/Settings$SettingsBackPressedListenner;

    invoke-interface {v1}, Lcom/android/settings/Settings$SettingsBackPressedListenner;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    const/4 v1, 0x1

    .line 1125
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 20
    .parameter
    .parameter "headerIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v7

    .line 677
    .local v7, accountTypes:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 678
    .local v5, accountHeaders:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object v9, v7

    .local v9, arr$:[Ljava/lang/String;
    array-length v14, v9

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_5

    aget-object v6, v9, v12

    .line 679
    .local v6, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 680
    .local v13, label:Ljava/lang/CharSequence;
    if-nez v13, :cond_0

    .line 678
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 684
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 685
    .local v8, accounts:[Landroid/accounts/Account;
    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v16, 0x1

    .line 687
    .local v16, skipToAccount:Z
    :goto_2
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 688
    .local v4, accHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 689
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 690
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 692
    :cond_1
    if-eqz v16, :cond_4

    .line 693
    const v17, #com.android.settings:string@account_sync_settings_title#t

    move/from16 v0, v17

    iput v0, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 694
    const v17, #com.android.settings:string@account_sync_settings_title#t

    move/from16 v0, v17

    iput v0, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 695
    const-class v17, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 696
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 698
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account"

    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 700
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account"

    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 715
    :cond_2
    :goto_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 685
    .end local v4           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v16           #skipToAccount:Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 703
    .restart local v4       #accHeader:Landroid/preference/PreferenceActivity$Header;
    .restart local v16       #skipToAccount:Z
    :cond_4
    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 704
    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 705
    const-class v17, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 706
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 707
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->isMultiPane()Z

    move-result v17

    if-nez v17, :cond_2

    .line 711
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_label"

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 719
    .end local v4           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v6           #accountType:Ljava/lang/String;
    .end local v8           #accounts:[Landroid/accounts/Account;
    .end local v13           #label:Ljava/lang/CharSequence;
    .end local v16           #skipToAccount:Z
    :cond_5
    new-instance v17, Lcom/android/settings/Settings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$3;-><init>(Lcom/android/settings/Settings;)V

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->getPcenterHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v15

    .line 727
    .local v15, pcHeader:Landroid/preference/PreferenceActivity$Header;
    if-eqz v15, :cond_6

    .line 728
    add-int/lit8 v11, p2, 0x1

    .end local p2
    .local v11, headerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v11

    .line 730
    .end local v11           #headerIndex:I
    .restart local p2
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceActivity$Header;

    .line 731
    .local v10, header:Landroid/preference/PreferenceActivity$Header;
    add-int/lit8 v11, p2, 0x1

    .end local p2
    .restart local v11       #headerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v11

    .end local v11           #headerIndex:I
    .restart local p2
    goto :goto_4

    .line 733
    .end local v10           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    .line 734
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 735
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    .line 737
    :cond_8
    return p2
.end method

.method private insertUpdateHeader(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private removeSettingNumber()V
    .locals 3

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/android/settings/Settings;->hasUpdatePackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UPDATE_HOME_ICON_NUMBER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ComponentName"

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private removeUpdateHeader(Z)V
    .locals 4
    .parameter "selected"

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-direct {p0}, Lcom/android/settings/Settings;->hasUpdatePackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/android/settings/Settings;->removeUpdatePackage()V

    .line 494
    invoke-direct {p0}, Lcom/android/settings/Settings;->removeSettingNumber()V

    .line 496
    iget-object v0, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v2, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    new-instance v1, Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v0, "com.baidu.action.ota.UPDATEPKG_SELECTED"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    :cond_0
    return-void

    .line 500
    :cond_1
    const-string v0, "com.baidu.action.ota.UPDATEPKG_NOTSELECTED"

    goto :goto_0
.end method

.method private removeUpdatePackage()V
    .locals 2

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 526
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 527
    const-string v1, "com.baidu.extra.ota.pkgversion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->setIntent(Landroid/content/Intent;)V

    .line 530
    :cond_0
    return-void
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 290
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 306
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 309
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 311
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 312
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 314
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 315
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 316
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 317
    iput-object v4, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 319
    invoke-direct {p0, v4}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 320
    iget v7, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 322
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 323
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 325
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v3

    .line 328
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v6, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v7, "show"

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "eng"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 559
    .local v5, showDev:Z
    const/4 v2, 0x0

    .line 561
    .local v2, i:I
    iget-object v6, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 562
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_f

    .line 563
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 565
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v6

    .line 566
    .local v3, id:I
    const v6, #com.android.settings:id@operator_settings#t

    if-eq v3, v6, :cond_1

    const v6, #com.android.settings:id@manufacturer_settings#t

    if-ne v3, v6, :cond_5

    .line 567
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 616
    :cond_2
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v6, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 619
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 623
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_0

    .line 625
    iget-object v6, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v6, :cond_4

    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 627
    iput-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 629
    :cond_4
    iget-object v6, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    :cond_5
    const v6, #com.android.settings:id@wifi_settings#t

    if-ne v3, v6, :cond_6

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 571
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 573
    :cond_6
    const v6, #com.android.settings:id@bluetooth_settings#t

    if-ne v3, v6, :cond_7

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 576
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 578
    :cond_7
    const v6, #com.android.settings:id@privacy_settings#t

    if-ne v3, v6, :cond_8

    .line 580
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 581
    :cond_8
    const v6, #com.android.settings:id@data_usage_settings#t

    if-ne v3, v6, :cond_9

    .line 583
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 585
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 588
    .local v4, netManager:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 589
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 591
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 594
    .end local v4           #netManager:Landroid/os/INetworkManagementService;
    :cond_9
    const v6, #com.android.settings:id@account_settings#t

    if-ne v3, v6, :cond_a

    .line 595
    add-int/lit8 v1, v2, 0x1

    .line 596
    .local v1, headerIndex:I
    invoke-direct {p0, p1, v1}, Lcom/android/settings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v2

    .line 597
    goto/16 :goto_1

    .end local v1           #headerIndex:I
    :cond_a
    const v6, #com.android.settings:id@user_settings#t

    if-ne v3, v6, :cond_c

    .line 598
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 601
    :cond_b
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 603
    :cond_c
    const v6, #com.android.settings:id@development_settings#t

    if-ne v3, v6, :cond_d

    .line 604
    if-nez v5, :cond_2

    .line 605
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 607
    :cond_d
    const v6, #com.android.settings:id@sim_settings#t

    if-eq v3, v6, :cond_2

    .line 611
    const v6, #com.android.settings:id@system_update#t

    if-ne v3, v6, :cond_e

    .line 612
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto/16 :goto_1

    .line 633
    :cond_e
    const v6, #com.android.settings:id@backpad_settings#t

    if-ne v3, v6, :cond_2

    .line 613
    invoke-static {}, Landroid/app/ActivityManager;->hasBackPanelStatic()Z

    move-result v6

    if-nez v6, :cond_2

    .line 614
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 635
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #id:I
    :cond_f
    return-void
.end method


# virtual methods
.method public addBackPressedListenner(Lcom/android/settings/Settings$SettingsBackPressedListenner;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/settings/Settings;->mListenner:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1114
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 359
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 360
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 364
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 365
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 367
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 368
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 372
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 373
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 376
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 370
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 376
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 770
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v2, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 400
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, intentClass:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 390
    :cond_2
    const-string v2, "com.android.settings.wifi.WifiApSettings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 393
    :cond_3
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    :cond_4
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 765
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected isMainPage()Z
    .locals 2

    .prologue
    .line 1167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/Settings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1042
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 1044
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mSetupWizardMode:Z

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/android/settings/Settings;->removeSettingNumber()V

    .line 551
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->onBackPressed()V

    .line 553
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, #com.android.settings:xml@settings_headers#t

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 471
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 4
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 425
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/SwapNaviBaseActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 429
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/settings/ZonePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    :cond_0
    const-string v2, "settings:remove_ui_options"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "account"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 451
    const-string v2, "account"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 452
    .local v0, account:Landroid/accounts/Account;
    const-string v2, "com.baidu"

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    const-string v2, "settings:remove_ui_options"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 458
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mSetupWizardMode:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 177
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 178
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v3}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 181
    const-string v0, "development"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 184
    invoke-direct {p0}, Lcom/android/settings/Settings;->getMetaData()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/SwapNaviBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget v0, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 193
    const v0, #com.android.settings:string@settings_label#t

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->setTitle(I)V

    .line 197
    :cond_1
    if-eqz p1, :cond_2

    .line 198
    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 199
    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 203
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 225
    :cond_5
    invoke-static {p0}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Settings;->simList:Ljava/util/List;

    .line 226
    iget-object v0, p0, Lcom/android/settings/Settings;->mAirReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/Settings;->mAirReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->onDestroy()V

    .line 281
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 409
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 411
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 412
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 415
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 419
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 5
    .parameter "header"
    .parameter "position"

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, revert:Z
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, #com.android.settings:id@account_add#t

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 996
    const/4 v0, 0x1

    .line 998
    :cond_0
    const-wide/32 v1, -0x6fffffff

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 999
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/Settings;->removeUpdateHeader(Z)V

    .line 1001
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SwapNaviBaseActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1003
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_2

    .line 1004
    iget-object v1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_2
    iput-object p1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1130
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1131
    invoke-direct {p0}, Lcom/android/settings/Settings;->hockBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    const/4 v0, 0x1

    .line 1135
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SwapNaviBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-super {p0, p1}, Lcom/android/settings/SwapNaviBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 337
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 343
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 266
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->onPause()V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 268
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 275
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1013
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1014
    .local v3, titleRes:I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    const v3, #com.android.settings:string@wallpaper_settings_fragment_title#t

    .line 1020
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1022
    const/4 v0, 0x1

    return v0

    .line 1016
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    const v3, #com.android.settings:string@user_info_settings_title#t

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->onResume()V

    .line 248
    new-instance v1, Lcom/android/settings/Settings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$2;-><init>(Lcom/android/settings/Settings;)V

    iput-object v1, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 254
    iget-object v1, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 258
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 259
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 262
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/android/settings/SwapNaviBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 233
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mSetupWizardMode:Z

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 242
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->removeUpdateHeader(Z)V

    .line 544
    invoke-super {p0}, Lcom/android/settings/SwapNaviBaseActivity;->onUserLeaveHint()V

    .line 545
    return-void
.end method

.method public removeBackPressedListenner(Lcom/android/settings/Settings$SettingsBackPressedListenner;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/settings/Settings;->mListenner:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1117
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1031
    if-nez p1, :cond_0

    .line 1032
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/settings/SwapNaviBaseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1036
    :goto_0
    return-void

    .line 1034
    :cond_0
    new-instance v0, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Lcom/android/settings/SwapNaviBaseActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter "targetIntent"

    .prologue
    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Lcom/android/settings/SwapNaviBaseActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 295
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 296
    iput-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 298
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SwapNaviBaseActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 299
    return-void
.end method
