.class Lcom/android/settings/bB;
.super Ljava/lang/Object;
.source "AccessControlSetApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vz:Lcom/android/settings/AccessControlSetApp;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlSetApp;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/bB;->vz:Lcom/android/settings/AccessControlSetApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/bB;->vz:Lcom/android/settings/AccessControlSetApp;

    invoke-static {v0}, Lcom/android/settings/AccessControlSetApp;->b(Lcom/android/settings/AccessControlSetApp;)V

    .line 118
    return-void
.end method
