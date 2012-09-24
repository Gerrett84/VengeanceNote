.class Lcom/android/settings/dz;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eJ:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/settings/dz;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/settings/dz;->eJ:Lcom/android/settings/AccessibilitySettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->removeDialog(I)V

    .line 496
    const-string v0, "ro.screenreader.market"

    const-string v1, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 500
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/dz;->eJ:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    .line 502
    return-void
.end method
