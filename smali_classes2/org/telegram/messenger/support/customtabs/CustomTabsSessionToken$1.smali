.class Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$1;
.super Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "navigationEvent"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken$1;->this$0:Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    # getter for: Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    invoke-static {v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 51
    :goto_9
    return-void

    .line 47
    :catch_a
    move-exception v0

    .line 48
    .local v0, "var4":Landroid/os/RemoteException;
    const-string v1, "CustomTabsSessionToken"

    const-string v2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
