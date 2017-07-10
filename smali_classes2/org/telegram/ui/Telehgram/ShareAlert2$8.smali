.class Lorg/telegram/ui/Telehgram/ShareAlert2$8;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "ShareAlert2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/ShareAlert2;

    .prologue
    .line 392
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$8;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$8;->this$0:Lorg/telegram/ui/Telehgram/ShareAlert2;

    # invokes: Lorg/telegram/ui/Telehgram/ShareAlert2;->updateLayout()V
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/ShareAlert2;->access$900(Lorg/telegram/ui/Telehgram/ShareAlert2;)V

    .line 396
    return-void
.end method
