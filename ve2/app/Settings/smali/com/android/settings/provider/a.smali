.class final Lcom/android/settings/provider/a;
.super Ljava/lang/Thread;
.source "MiuiSettingsUtil.java"


# instance fields
.field final synthetic oE:Ljava/util/ArrayList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/provider/a;->oE:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/settings/provider/a;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/provider/a;->oE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/provider/c;

    .line 140
    iget-object v2, p0, Lcom/android/settings/provider/a;->val$context:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/provider/c;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/provider/c;->Eu:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/provider/c;->index:I

    iget v0, v0, Lcom/android/settings/provider/c;->count:I

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/settings/provider/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method
