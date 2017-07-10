.class Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->locationQueryCancelRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$300(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_9

    .line 186
    :goto_8
    return-void

    .line 178
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 179
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$400(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 180
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->lastKnownLocation:Landroid/location/Location;
    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$400(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;->onLocationAcquired(Landroid/location/Location;)V

    .line 185
    :cond_28
    :goto_28
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # invokes: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$600(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)V

    goto :goto_8

    .line 182
    :cond_2e
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$1;->this$0:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    # getter for: Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->delegate:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->access$500(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;->onUnableLocationAcquire()V

    goto :goto_28
.end method
