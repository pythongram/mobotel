.class Lorg/telegram/ui/LocationActivity$17;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 668
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$17;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 671
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$17;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move-result-object v0

    .line 672
    .local v0, "object":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$17;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 673
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$17;->this$0:Lorg/telegram/ui/LocationActivity;

    # getter for: Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;
    invoke-static {v1}, Lorg/telegram/ui/LocationActivity;->access$2000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;)V

    .line 675
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity$17;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LocationActivity;->finishFragment()V

    .line 676
    return-void
.end method
