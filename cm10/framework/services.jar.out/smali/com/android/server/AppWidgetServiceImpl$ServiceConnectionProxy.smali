.class Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceConnectionProxy"
.end annotation


# instance fields
.field private final mConnectionCb:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "connectionCb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->mConnectionCb:Landroid/os/IBinder;

    .line 154
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->mConnectionCb:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    move-result-object v0

    .line 174
    .local v0, cb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection;->onServiceDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->mConnectionCb:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    move-result-object v0

    .line 160
    .local v0, cb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection;->onServiceConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/server/AppWidgetServiceImpl$ServiceConnectionProxy;->disconnect()V

    .line 168
    return-void
.end method
