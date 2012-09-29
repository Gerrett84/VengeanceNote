.class Lcom/android/settings/l;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aO:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/settings/l;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/settings/l;->aO:Lcom/android/settings/VirusScanAppActivity;

    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->d(Lcom/android/settings/VirusScanAppActivity;)V

    .line 617
    return-void
.end method
