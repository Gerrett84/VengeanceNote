.class final Lcom/miui/bugreport/i;
.super Landroid/os/AsyncTask;
.source "Utils.java"


# instance fields
.field private t:Landroid/app/ProgressDialog;

.field final synthetic u:Z

.field final synthetic v:Landroid/content/Context;

.field final synthetic w:Ljava/lang/String;

.field final synthetic x:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/miui/bugreport/i;->u:Z

    iput-object p2, p0, Lcom/miui/bugreport/i;->v:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/bugreport/i;->w:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/bugreport/i;->x:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/bugreport/i;->x:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/miui/bugreport/i;->u:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    .line 149
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/miui/bugreport/i;->u:Z

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/bugreport/i;->v:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    .line 128
    iget-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/bugreport/i;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 130
    iget-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 131
    iget-object v0, p0, Lcom/miui/bugreport/i;->t:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 133
    :cond_0
    return-void
.end method
