.class Lcom/android/settings/dq;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# instance fields
.field final synthetic GP:Lcom/android/settings/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/dq;->GP:Lcom/android/settings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/dq;->GP:Lcom/android/settings/PointerSpeedPreference;

    invoke-static {v0}, Lcom/android/settings/PointerSpeedPreference;->a(Lcom/android/settings/PointerSpeedPreference;)V

    .line 52
    return-void
.end method
