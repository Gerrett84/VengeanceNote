.class Lcom/android/settings/dx;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AccessibilitySettings.java"


# instance fields
.field final synthetic eJ:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/dx;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/dx;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->c(Lcom/android/settings/AccessibilitySettings;)V

    .line 155
    return-void
.end method
