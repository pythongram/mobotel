.class Lorg/telegram/ui/ContactsActivity$7;
.super Ljava/lang/Object;
.source "ContactsActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/ContactsActivity;

    .prologue
    .line 618
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .registers 7
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 621
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 622
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_c
    if-ge v0, v2, :cond_2e

    .line 623
    iget-object v3, p0, Lorg/telegram/ui/ContactsActivity$7;->this$0:Lorg/telegram/ui/ContactsActivity;

    # getter for: Lorg/telegram/ui/ContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/ContactsActivity;->access$400(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 624
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v3, :cond_24

    .line 625
    check-cast v1, Lorg/telegram/ui/Cells/UserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    .line 622
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 626
    .restart local v1    # "child":Landroid/view/View;
    :cond_24
    instance-of v3, v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v3, :cond_21

    .line 627
    check-cast v1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_21

    .line 630
    :cond_2e
    return-void
.end method
