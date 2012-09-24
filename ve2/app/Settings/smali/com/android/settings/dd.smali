.class Lcom/android/settings/dd;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic dN:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/dd;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/dd;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->a(Lcom/android/settings/AccessibilitySettings;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/dd;->dN:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->b(Lcom/android/settings/AccessibilitySettings;)V

    .line 156
    return-void
.end method
