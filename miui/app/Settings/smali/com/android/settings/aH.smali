.class Lcom/android/settings/aH;
.super Ljava/lang/Object;
.source "MiuiApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic nu:Lcom/android/settings/MiuiApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/aH;->nu:Lcom/android/settings/MiuiApnEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/aH;->nu:Lcom/android/settings/MiuiApnEditor;

    invoke-virtual {v0}, Lcom/android/settings/MiuiApnEditor;->finish()V

    .line 61
    return-void
.end method
