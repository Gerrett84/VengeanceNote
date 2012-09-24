.class Lcom/android/settings/au;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iI:Lcom/android/settings/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/au;->iI:Lcom/android/settings/AccessControlFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 66
    return-void
.end method
