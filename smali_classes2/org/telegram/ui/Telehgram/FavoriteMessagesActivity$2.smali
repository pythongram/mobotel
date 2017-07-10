.class Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$2;
.super Ljava/lang/Object;
.source "FavoriteMessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity$2;->this$0:Lorg/telegram/ui/Telehgram/FavoriteMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    const-string v1, "fm_enable"

    sget-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->favoriteMessages:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_7
    invoke-static {v1, v0}, Lorg/telegram/ui/Telehgram/Turbo;->setBooleanValue(Ljava/lang/String;Z)V

    .line 58
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_15

    .line 59
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "v":Landroid/view/View;
    sget-boolean v0, Lorg/telegram/ui/Telehgram/Turbo;->favoriteMessages:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 61
    :cond_15
    return-void

    .line 57
    .restart local p1    # "v":Landroid/view/View;
    :cond_16
    const/4 v0, 0x0

    goto :goto_7
.end method
