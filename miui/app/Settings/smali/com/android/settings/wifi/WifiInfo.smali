.class public Lcom/android/settings/wifi/WifiInfo;
.super Lmiui/preference/BasePreferenceActivity;
.source "WifiInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f05004f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiInfo;->addPreferencesFromResource(I)V

    .line 39
    return-void
.end method
