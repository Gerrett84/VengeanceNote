.class Lcom/android/settings/G;
.super Landroid/os/Handler;
.source "MiuiAccessibilitySettings.java"


# instance fields
.field final synthetic dM:Lcom/android/settings/MiuiAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiAccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/G;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/G;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->a(Lcom/android/settings/MiuiAccessibilitySettings;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/G;->dM:Lcom/android/settings/MiuiAccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/MiuiAccessibilitySettings;->b(Lcom/android/settings/MiuiAccessibilitySettings;)V

    .line 154
    return-void
.end method
