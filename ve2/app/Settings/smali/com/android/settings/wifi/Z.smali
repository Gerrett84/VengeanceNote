.class Lcom/android/settings/wifi/Z;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zL:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/wifi/Z;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/Z;->zL:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 154
    return-void
.end method
