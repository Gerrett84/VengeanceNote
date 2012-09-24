.class Lcom/android/settings/bs;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic uk:Lcom/android/settings/eb;


# direct methods
.method constructor <init>(Lcom/android/settings/eb;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings/bs;->uk:Lcom/android/settings/eb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 368
    new-instance v0, Lcom/android/settings/dQ;

    iget-object v1, p0, Lcom/android/settings/bs;->uk:Lcom/android/settings/eb;

    iget-object v1, v1, Lcom/android/settings/eb;->Kc:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings/bs;->uk:Lcom/android/settings/eb;

    iget-object v2, v2, Lcom/android/settings/eb;->Pw:Lcom/android/settings/as;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/dQ;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/as;Lcom/android/settings/ed;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/dQ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 370
    iget-object v0, p0, Lcom/android/settings/bs;->uk:Lcom/android/settings/eb;

    iget-object v0, v0, Lcom/android/settings/eb;->Px:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 371
    return-void
.end method
