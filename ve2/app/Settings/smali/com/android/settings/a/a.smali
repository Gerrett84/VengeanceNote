.class Lcom/android/settings/a/a;
.super Landroid/os/AsyncTask;
.source "NetworkPolicyEditor.java"


# instance fields
.field final synthetic K:[Landroid/net/NetworkPolicy;

.field final synthetic L:Lcom/android/settings/a/g;


# direct methods
.method constructor <init>(Lcom/android/settings/a/g;[Landroid/net/NetworkPolicy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/a/a;->L:Lcom/android/settings/a/g;

    iput-object p2, p0, Lcom/android/settings/a/a;->K:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/a/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/a/a;->L:Lcom/android/settings/a/g;

    iget-object v1, p0, Lcom/android/settings/a/a;->K:[Landroid/net/NetworkPolicy;

    invoke-virtual {v0, v1}, Lcom/android/settings/a/g;->a([Landroid/net/NetworkPolicy;)V

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
