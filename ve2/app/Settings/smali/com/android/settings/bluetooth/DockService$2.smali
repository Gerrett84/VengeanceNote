.class Lcom/android/settings/bluetooth/DockService$2;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic nf:Lcom/android/settings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DockService;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService$2;->nf:Lcom/android/settings/bluetooth/DockService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService$2;->nf:Lcom/android/settings/bluetooth/DockService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DockService;->a(Lcom/android/settings/bluetooth/DockService;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 525
    return-void
.end method
