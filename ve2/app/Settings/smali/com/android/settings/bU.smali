.class Lcom/android/settings/bU;
.super Landroid/database/ContentObserver;
.source "MiuiWirelessSettings.java"


# instance fields
.field final synthetic yx:Lcom/android/settings/MiuiWirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiWirelessSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/bU;->yx:Lcom/android/settings/MiuiWirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/bU;->yx:Lcom/android/settings/MiuiWirelessSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiWirelessSettings;->a(Lcom/android/settings/MiuiWirelessSettings;)V

    .line 78
    return-void
.end method
