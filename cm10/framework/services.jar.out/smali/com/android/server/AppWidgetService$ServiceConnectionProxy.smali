.class Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
.super Ljava/lang/Object;
.source "AppWidgetService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
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
    .line 119
    .local p1, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->mConnectionCb:Landroid/os/IBinder;

    .line 121
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->mConnectionCb:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    move-result-object v0

    .line 138
    .local v0, cb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection;->onServiceDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->mConnectionCb:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    move-result-object v0

    .line 126
    .local v0, cb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection;->onServiceConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 133
    return-void
.end method
