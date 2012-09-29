.class Lcom/android/settings/bU;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Bb:Lcom/android/settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/bU;->Bb:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/bU;->Bb:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v0, p1}, Lcom/android/settings/DeviceAdminAdd;->d(Landroid/view/View;)V

    .line 168
    return-void
.end method
