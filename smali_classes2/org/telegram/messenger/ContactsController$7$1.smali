.class Lorg/telegram/messenger/ContactsController$7$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$7;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$7;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$7;

    .prologue
    .line 959
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$7$1;->this$1:Lorg/telegram/messenger/ContactsController$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 962
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 963
    :try_start_6
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$7$1;->this$1:Lorg/telegram/messenger/ContactsController$7;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->access$402(Lorg/telegram/messenger/ContactsController;Z)Z

    .line 964
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1b

    .line 965
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 966
    return-void

    .line 964
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method
