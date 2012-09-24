.class Lcom/android/settings/bt;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic uj:Lcom/android/settings/eb;


# direct methods
.method constructor <init>(Lcom/android/settings/eb;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings/bt;->uj:Lcom/android/settings/eb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 377
    return-void
.end method
