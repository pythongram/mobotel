.class Lorg/telegram/ui/Components/PagerSlidingTabStrip$5;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PagerSlidingTabStrip;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$5;->this$0:Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 270
    return-void
.end method
