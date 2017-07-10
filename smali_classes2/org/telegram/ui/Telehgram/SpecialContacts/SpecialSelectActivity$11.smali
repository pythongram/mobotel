.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$11;
.super Ljava/lang/Object;
.source "SpecialSelectActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    .prologue
    .line 1027
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$11;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 1030
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$11;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 1031
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_b
    if-ge v0, v2, :cond_24

    .line 1032
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$11;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;->access$1200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1033
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v3, :cond_21

    .line 1034
    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .end local v1    # "child":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    .line 1031
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1037
    :cond_24
    return-void
.end method
