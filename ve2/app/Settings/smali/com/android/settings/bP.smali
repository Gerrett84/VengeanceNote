.class Lcom/android/settings/bP;
.super Ljava/lang/Object;
.source "ApplicationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic xQ:Lcom/android/settings/ApplicationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApplicationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/bP;->xQ:Lcom/android/settings/ApplicationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    check-cast p2, Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/settings/bP;->xQ:Lcom/android/settings/ApplicationSettings;

    invoke-virtual {v0, p2}, Lcom/android/settings/ApplicationSettings;->L(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    return v0
.end method
