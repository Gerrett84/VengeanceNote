.class Lcom/android/settings/accounts/SyncSettings$1;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic yw:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/SyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$1;->yw:Lcom/android/settings/accounts/SyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method
