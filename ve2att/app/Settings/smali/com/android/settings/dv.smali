.class Lcom/android/settings/dv;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic eJ:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/dv;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/dv;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->a(Lcom/android/settings/AccessibilitySettings;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/dv;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->b(Lcom/android/settings/AccessibilitySettings;)V

    .line 147
    return-void
.end method
