.class Landroid/app/DownloadManager$Injector;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addParens(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getLocalUri(Landroid/app/DownloadManager$CursorTranslator;)Ljava/lang/String;
    .locals 4
    .parameter "translator"

    .prologue
    .line 71
    const-string v2, "destination"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 72
    .local v0, destinationType:J
    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 73
    const-string v2, "hint"

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/DownloadManager$CursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/app/DownloadManager$CursorTranslator;->callGetLocalUri()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getPausedReason(I)J
    .locals 2
    .parameter "status"

    .prologue
    .line 79
    const/16 v0, 0xc1

    if-ne p0, v0, :cond_0

    .line 80
    const-wide/16 v0, 0x5

    .line 82
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x4

    goto :goto_0
.end method
