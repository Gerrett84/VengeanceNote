.class Lcom/android/settings/be;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic sb:Lcom/android/settings/dH;


# direct methods
.method constructor <init>(Lcom/android/settings/dH;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings/be;->sb:Lcom/android/settings/dH;

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
