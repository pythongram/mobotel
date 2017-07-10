.class Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;
.super Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 7
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p4, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z
    .registers 9
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    .line 45
    .local v1, "sessionToken":Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;
    :try_start_6
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)V

    .line 50
    .local v0, "e":Landroid/os/IBinder$DeathRecipient;
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    # getter for: Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;
    invoke-static {v4}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_32

    .line 51
    :try_start_12
    invoke-interface {p1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 52
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    # getter for: Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;
    invoke-static {v4}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2f

    .line 55
    :try_start_28
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_32

    move-result v3

    .line 57
    .end local v0    # "e":Landroid/os/IBinder$DeathRecipient;
    :goto_2e
    return v3

    .line 53
    .restart local v0    # "e":Landroid/os/IBinder$DeathRecipient;
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v4
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_32} :catch_32

    .line 56
    .end local v0    # "e":Landroid/os/IBinder$DeathRecipient;
    :catch_32
    move-exception v2

    .line 57
    .local v2, "var7":Landroid/os/RemoteException;
    goto :goto_2e
.end method

.method public updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->updateVisuals(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public warmup(J)Z
    .registers 4
    .param p1, "flags"    # J

    .prologue
    .line 38
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->warmup(J)Z

    move-result v0

    return v0
.end method
