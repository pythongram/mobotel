.class Lorg/telegram/ui/Adapters/MentionsAdapter$2;
.super Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
.source "MentionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;
    .param p2, "locationProviderDelegate"    # Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$2;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-direct {p0, p2}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    return-void
.end method


# virtual methods
.method public stop()V
    .registers 3

    .prologue
    .line 112
    invoke-super {p0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$2;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->lastKnownLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$102(Lorg/telegram/ui/Adapters/MentionsAdapter;Landroid/location/Location;)Landroid/location/Location;

    .line 114
    return-void
.end method
