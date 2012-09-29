.class Lcom/android/settings/users/UserDetailsSettings$1;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Kv:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$1;->Kv:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$1;->Kv:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserDetailsSettings;->a(Lcom/android/settings/users/UserDetailsSettings;)V

    .line 277
    return-void
.end method
