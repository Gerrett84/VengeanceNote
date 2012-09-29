.class Lcom/android/settings/deviceinfo/Memory$3;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic g:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$3;->g:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$3;->g:Lcom/android/settings/deviceinfo/Memory;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/Memory;->b(Lcom/android/settings/deviceinfo/Memory;)V

    .line 259
    return-void
.end method
