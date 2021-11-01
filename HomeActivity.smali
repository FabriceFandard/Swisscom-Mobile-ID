.class public Lcom/futurae/mobileapp/ui/home/HomeActivity;
.super Lc/c/a/j/e/e;
.source "HomeActivity.java"

# interfaces
.implements Lc/c/a/j/a$a;
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;
.implements Lcom/futurae/mobileapp/ui/qrcapture/QrCodeReaderFragment$c;
.implements Lcom/futurae/mobileapp/ui/listing/ListingFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futurae/mobileapp/ui/home/HomeActivity$c;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String;


# instance fields
.field public bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public w:Landroid/content/BroadcastReceiver;

.field public x:Landroid/app/Dialog;

.field public y:Z

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/futurae/mobileapp/ui/home/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/j/e/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->y:Z

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;F)V
    .locals 4

    const v0, 0x7f0800a3

    .line 13
    invoke-virtual {p0, v0}, La/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 17
    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "body"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0e003c

    .line 30
    sget-object v1, Lc/c/a/j/g/a;->b:Lc/c/a/j/g/a;

    invoke-virtual {p0, v0, p1, v1}, Lc/c/a/j/e/e;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 25
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 20
    invoke-virtual {p0}, La/j/a/e;->n()La/j/a/j;

    move-result-object v0

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, La/j/a/j;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/futurae/mobileapp/ui/listing/ListingFragment;

    if-eqz v1, :cond_1

    .line 22
    check-cast v0, Lcom/futurae/mobileapp/ui/listing/ListingFragment;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/futurae/mobileapp/ui/listing/ListingFragment;->J()V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/futurae/mobileapp/ui/listing/ListingFragment;->K()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ZLcom/futurae/mobileapp/model/Account;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const p2, 0x7f080141

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f080141

    const v2, 0x7f0800a3

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-static {p1, v3}, Lcom/futurae/mobileapp/ui/listing/ListingFragment;->a(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lc/c/a/j/e/e;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/Boolean;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {p0}, Lc/c/a/j/e/e;->t()I

    move-result v0

    int-to-float v0, v0

    .line 6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->a(Landroid/content/Context;F)V

    const p1, 0x7f050060

    .line 8
    invoke-virtual {p0, p1}, Lc/c/a/j/e/e;->c(I)V

    return v1

    :cond_1
    const v0, 0x7f080142

    if-ne p1, v0, :cond_2

    .line 9
    new-instance p1, Lcom/futurae/mobileapp/ui/more/MoreFragment;

    invoke-direct {p1}, Lcom/futurae/mobileapp/ui/more/MoreFragment;-><init>()V

    .line 10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lc/c/a/j/e/e;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/Boolean;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->a(Landroid/content/Context;F)V

    const p1, 0x7f05006f

    .line 12
    invoke-virtual {p0, p1}, Lc/c/a/j/e/e;->c(I)V

    return v1

    :cond_2
    return v3
.end method

.method public b()V
    .locals 2

    .line 4
    invoke-static {p0}, Lcom/futurae/mobileapp/ui/enrolment/EnrolmentActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f3

    .line 5
    invoke-virtual {p0, v0, v1}, La/j/a/e;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/futurae/mobileapp/ui/listing/ListingFragment;->a(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x7f0800a3

    invoke-virtual {p0, v2, p1, v1}, Lc/c/a/j/e/e;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/Boolean;)V

    .line 3
    iget-object p1, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f080141

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final b(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f00ca

    invoke-direct {p1, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0e00b2

    .line 7
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0e00b1

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0e00a4

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const p1, 0x7f0800a3

    .line 11
    invoke-virtual {p0, p1}, La/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0e00b3

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f05005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-static {p1, v1, v3, v0, v2}, Lc/c/a/k/m;->a(Landroid/view/View;Ljava/lang/String;ILandroid/view/View$OnClickListener;I)Lcom/google/android/material/snackbar/Snackbar;

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 5

    .line 1
    invoke-static {}, Lc/d/b/c;->f()Lc/d/b/c;

    move-result-object v0

    .line 2
    const-class v1, Lc/d/b/y/l;

    .line 3
    invoke-virtual {v0}, Lc/d/b/c;->a()V

    .line 4
    iget-object v0, v0, Lc/d/b/c;->d:Lc/d/b/k/o;

    invoke-virtual {v0, v1}, Lc/d/b/k/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lc/d/b/y/l;

    const-string v1, "firebase"

    .line 6
    invoke-virtual {v0, v1}, Lc/d/b/y/l;->a(Ljava/lang/String;)Lc/d/b/y/f;

    move-result-object v0

    .line 7
    new-instance v1, Lc/d/b/y/h$b;

    invoke-direct {v1}, Lc/d/b/y/h$b;-><init>()V

    const-wide/16 v2, 0xe10

    .line 8
    invoke-virtual {v1, v2, v3}, Lc/d/b/y/h$b;->a(J)Lc/d/b/y/h$b;

    .line 9
    new-instance v2, Lc/d/b/y/h;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lc/d/b/y/h;-><init>(Lc/d/b/y/h$b;Lc/d/b/y/h$a;)V

    .line 10
    iget-object v1, v0, Lc/d/b/y/f;->b:Ljava/util/concurrent/Executor;

    .line 11
    new-instance v4, Lc/d/b/y/e;

    invoke-direct {v4, v0, v2}, Lc/d/b/y/e;-><init>(Lc/d/b/y/f;Lc/d/b/y/h;)V

    .line 12
    invoke-static {v1, v4}, Lc/c/a/k/c;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lc/d/a/b/q/g;

    .line 13
    invoke-virtual {v0}, Lc/d/b/y/f;->a()Lc/d/a/b/q/g;

    move-result-object v1

    new-instance v2, Lc/c/a/j/g/f;

    invoke-direct {v2, p0, v0}, Lc/c/a/j/g/f;-><init>(Lcom/futurae/mobileapp/ui/home/HomeActivity;Lc/d/b/y/f;)V

    .line 14
    check-cast v1, Lc/d/a/b/q/f0;

    if-eqz v1, :cond_1

    .line 15
    new-instance v0, Lc/d/a/b/q/t;

    .line 16
    sget-object v3, Lc/d/a/b/q/i;->a:Ljava/util/concurrent/Executor;

    .line 17
    invoke-direct {v0, v3, v2}, Lc/d/a/b/q/t;-><init>(Ljava/util/concurrent/Executor;Lc/d/a/b/q/c;)V

    iget-object v2, v1, Lc/d/a/b/q/f0;->b:Lc/d/a/b/q/b0;

    .line 18
    invoke-virtual {v2, v0}, Lc/d/a/b/q/b0;->a(Lc/d/a/b/q/a0;)V

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a(Landroid/app/Activity;)Lc/d/a/b/f/l/i/j;

    move-result-object v2

    const-class v3, Lc/d/a/b/q/e0;

    const-string v4, "TaskOnStopCallback"

    .line 20
    invoke-interface {v2, v4, v3}, Lc/d/a/b/f/l/i/j;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v3

    check-cast v3, Lc/d/a/b/q/e0;

    if-nez v3, :cond_0

    new-instance v3, Lc/d/a/b/q/e0;

    .line 21
    invoke-direct {v3, v2}, Lc/d/a/b/q/e0;-><init>(Lc/d/a/b/f/l/i/j;)V

    .line 22
    :cond_0
    invoke-virtual {v3, v0}, Lc/d/a/b/q/e0;->a(Lc/d/a/b/q/a0;)V

    .line 23
    invoke-virtual {v1}, Lc/d/a/b/q/f0;->f()V

    .line 24
    invoke-static {}, Lc/c/a/d/a/a;->c()Lc/c/a/d/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/c/a/d/a/a;->a(Lc/c/a/j/e/e;)Z

    return-void

    .line 25
    :cond_1
    throw v3
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x3f2

    const/4 v1, 0x0

    const/16 v2, 0x3f3

    if-ne p1, v2, :cond_9

    const/4 p1, -0x1

    const v2, 0x7f0e0073

    const/4 v3, 0x1

    if-ne p2, p1, :cond_2

    const-string p1, "recovery_code"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "n/a"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->a(Z)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1, v1}, Lcom/futurae/mobileapp/ui/modal/SuccessModalActivity;->a(Landroid/content/Context;Lcom/futurae/mobileapp/model/Account;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p2, "error"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {}, Lc/c/a/k/c;->a()V

    .line 7
    invoke-static {p0, v3}, Lc/c/a/k/c;->a(Landroid/content/Context;Z)Ljava/security/KeyPair;

    move-result-object p1

    sput-object p1, Lc/c/a/c;->e:Ljava/security/KeyPair;

    .line 8
    invoke-static {p0}, Lc/c/a/g/a;->a(Landroid/content/Context;)Lc/c/a/g/a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "DELETE FROM accounts"

    .line 10
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const p1, 0x7f0e003c

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 12
    sget-object p3, Lc/c/a/j/e/b;->b:Lc/c/a/j/e/b;

    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/j/e/e;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, v1}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->a(Z)V

    .line 14
    invoke-static {p0, p1}, Lcom/futurae/mobileapp/ui/modal/SuccessModalRecoveryCodeActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_2
    const/16 p1, 0x3ec

    if-ne p2, p1, :cond_6

    const p1, 0x7f0e004a

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.permission.CAMERA"

    .line 16
    invoke-static {p0, p2}, La/g/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_4

    .line 17
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x2

    if-lt p3, v2, :cond_3

    .line 18
    new-instance p3, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f00ca

    invoke-direct {p3, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 19
    invoke-virtual {p3, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const v2, 0x7f0e003b

    .line 20
    invoke-virtual {p3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 21
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f0e00a4

    new-instance v2, Lc/c/a/k/b;

    invoke-direct {v2, p0, p2, v3}, Lc/c/a/k/b;-><init>(Lc/c/a/j/e/e;Ljava/lang/String;I)V

    .line 22
    invoke-virtual {p1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p0, p1, v3}, La/g/e/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 26
    invoke-static {p0}, Lcom/futurae/mobileapp/ui/qrcapture/QRCodeReaderActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1, v0}, La/j/a/e;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    return-void

    :cond_6
    const/16 p1, 0x3ed

    const p3, 0x7f0e0038

    if-ne p2, p1, :cond_7

    const p1, 0x7f0e0034

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    sget-object p2, Lc/c/a/j/e/b;->b:Lc/c/a/j/e/b;

    invoke-virtual {p0, p3, p1, p2}, Lc/c/a/j/e/e;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    :cond_7
    const/16 p1, 0x3ee

    if-ne p2, p1, :cond_8

    .line 30
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    sget-object p2, Lc/c/a/j/e/b;->b:Lc/c/a/j/e/b;

    invoke-virtual {p0, p3, p1, p2}, Lc/c/a/j/e/e;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    if-ne p1, v0, :cond_c

    const/16 p1, 0x3e8

    if-ne p2, p1, :cond_a

    const-string p1, "activation_code"

    .line 32
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->z:Ljava/lang/String;

    return-void

    :cond_a
    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_b

    const-string p1, "success"

    .line 33
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "account"

    .line 34
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/futurae/mobileapp/model/Account;

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->a(ZLcom/futurae/mobileapp/model/Account;)V

    :cond_b
    return-void

    :cond_c
    const/16 v0, 0x2360

    if-ne p1, v0, :cond_f

    .line 36
    invoke-static {}, Lc/c/a/d/a/a;->c()Lc/c/a/d/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/d/a/a;->a()Lc/c/a/d/a/b;

    move-result-object p1

    .line 37
    invoke-static {}, Lc/c/a/d/a/a;->c()Lc/c/a/d/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lc/c/a/d/a/a;->b()V

    if-eqz p1, :cond_d

    .line 38
    iget-object p2, p1, Lc/c/a/d/a/b;->b:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, La/o/a/a;->a(Landroid/content/Context;)La/o/a/a;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    const-string v0, "LOCAL_EVENT_AUTHENTICATOR_INTERRUPT"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, La/o/a/a;->a(Landroid/content/Intent;)Z

    :cond_d
    if-eqz p1, :cond_e

    .line 41
    iget-boolean p1, p1, Lc/c/a/d/a/b;->g:Z

    if-eqz p1, :cond_e

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 43
    :cond_e
    invoke-static {}, Lc/c/a/d/a/a;->c()Lc/c/a/d/a/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc/c/a/d/a/a;->a(Lc/c/a/j/e/e;)Z

    return-void

    :cond_f
    const/16 v0, 0x235f

    if-ne p1, v0, :cond_11

    const-string p1, "from_mobile_auth_uri"

    .line 44
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_10
    return-void

    .line 46
    :cond_11
    invoke-super {p0, p1, p2, p3}, La/j/a/e;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lc/c/a/j/e/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0021

    .line 2
    invoke-virtual {p0, v0}, La/b/k/h;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-virtual {p0}, Lc/c/a/j/e/e;->s()Landroidx/appcompat/widget/Toolbar;

    .line 5
    invoke-virtual {p0}, La/b/k/h;->q()La/b/k/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, La/b/k/a;->d(Z)V

    .line 7
    iget-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$c;)V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->v()V

    .line 9
    invoke-virtual {p0}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    invoke-static {p0}, Lc/c/a/k/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "report_invalidated_keystore"

    .line 12
    invoke-static {v0, v2}, Lc/c/a/k/o;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 13
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0f00ca

    invoke-direct {v3, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f0e0099

    .line 14
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0e0098

    .line 15
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0e0068

    .line 16
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 18
    invoke-static {v0, v2}, Lc/c/a/k/o;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->w()Z

    .line 20
    new-instance v0, Lcom/futurae/mobileapp/ui/home/HomeActivity$c;

    invoke-direct {v0, p0, v4}, Lcom/futurae/mobileapp/ui/home/HomeActivity$c;-><init>(Lcom/futurae/mobileapp/ui/home/HomeActivity;Lcom/futurae/mobileapp/ui/home/HomeActivity$a;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    invoke-static {p0}, Lcom/futurae/mobileapp/net/api/LogoutJobManager;->a(Landroid/content/Context;)V

    if-nez p1, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1, v1}, Lcom/futurae/mobileapp/ui/listing/ListingFragment;->a(Ljava/lang/String;Z)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const v0, 0x7f0800a3

    .line 25
    invoke-virtual {p0, v0, p1}, Lc/c/a/j/e/e;->a(ILandroidx/fragment/app/Fragment;)V

    .line 26
    :cond_1
    new-instance p1, Lc/c/a/j/g/d;

    invoke-direct {p1, p0}, Lc/c/a/j/g/d;-><init>(Lcom/futurae/mobileapp/ui/home/HomeActivity;)V

    iput-object p1, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->w:Landroid/content/BroadcastReceiver;

    .line 27
    invoke-static {p0}, La/o/a/a;->a(Landroid/content/Context;)La/o/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->w:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.swisscom.mobileid.action.ACCOUNT_UNENROLL_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, La/o/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    invoke-static {p0}, La/o/a/a;->a(Landroid/content/Context;)La/o/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->w:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.swisscom.mobileid.action.APP_OUTDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, La/o/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 29
    invoke-static {p0}, La/o/a/a;->a(Landroid/content/Context;)La/o/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->w:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.swisscom.mobileid.action.APPROVE_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, La/o/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 30
    invoke-static {p0}, La/o/a/a;->a(Landroid/content/Context;)La/o/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->w:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.swisscom.mobileid.action.INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, La/o/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 31
    invoke-static {}, Lc/c/a/j/a;->c()Lc/c/a/j/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc/c/a/j/a;->a(Lc/c/a/j/a$a;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->a(Landroid/os/Bundle;)V

    .line 33
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.location.PROVIDERS_CHANGED"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lc/c/a/j/g/c;

    invoke-direct {v0, p0}, Lc/c/a/j/g/c;-><init>(Lcom/futurae/mobileapp/ui/home/HomeActivity;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {p0}, La/o/a/a;->a(Landroid/content/Context;)La/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, La/o/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-static {}, Lc/c/a/j/a;->c()Lc/c/a/j/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/c/a/j/a;->b(Lc/c/a/j/a$a;)V

    .line 3
    invoke-super {p0}, La/b/k/h;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/j/a/e;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, La/j/a/e;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, La/j/a/e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    array-length p1, p3

    if-lez p1, :cond_a

    aget p1, p3, p2

    if-nez p1, :cond_a

    .line 3
    invoke-static {p0}, Lcom/futurae/mobileapp/ui/qrcapture/QRCodeReaderActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x3f2

    .line 4
    invoke-virtual {p0, p1, p2}, La/j/a/e;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x4

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v3, 0x5

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lc/c/a/k/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 6
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, p2

    if-eqz p1, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lc/c/a/k/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    :cond_3
    invoke-virtual {p0, p0}, Lc/c/a/j/e/e;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lc/c/a/k/j;->a(Landroid/content/Context;Landroid/app/Activity;)Lc/c/a/k/j;

    .line 10
    sget p1, Lc/c/a/k/j;->e:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lc/c/a/k/j;->a(Landroid/content/Context;Landroid/app/Activity;)Lc/c/a/k/j;

    const/16 p1, 0x67

    .line 12
    sput p1, Lc/c/a/k/j;->f:I

    .line 13
    :cond_5
    invoke-virtual {p0}, La/j/a/e;->n()La/j/a/j;

    move-result-object p1

    const p3, 0x7f0800a3

    invoke-virtual {p1, p3}, La/j/a/j;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 14
    instance-of p3, p1, Lcom/futurae/mobileapp/ui/more/MoreFragment;

    if-eqz p3, :cond_a

    .line 15
    check-cast p1, Lcom/futurae/mobileapp/ui/more/MoreFragment;

    if-eqz p1, :cond_a

    .line 16
    iget p3, p1, Lcom/futurae/mobileapp/ui/more/MoreFragment;->Z:I

    if-eq p3, p2, :cond_6

    if-ne p3, v0, :cond_a

    .line 17
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/c/a/j/e/e;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 18
    iget p2, p1, Lcom/futurae/mobileapp/ui/more/MoreFragment;->Z:I

    if-ne p2, v0, :cond_7

    const p2, 0x7f0e0084

    .line 19
    invoke-virtual {p1, p2}, Lcom/futurae/mobileapp/ui/more/MoreFragment;->c(I)V

    :cond_7
    const/4 p2, 0x3

    .line 20
    iput p2, p1, Lcom/futurae/mobileapp/ui/more/MoreFragment;->Z:I

    goto :goto_0

    .line 21
    :cond_8
    iget p2, p1, Lcom/futurae/mobileapp/ui/more/MoreFragment;->Z:I

    if-ne p2, v0, :cond_9

    const p2, 0x7f0e0086

    .line 22
    invoke-virtual {p1, p2}, Lcom/futurae/mobileapp/ui/more/MoreFragment;->c(I)V

    .line 23
    :cond_9
    iput v3, p1, Lcom/futurae/mobileapp/ui/more/MoreFragment;->Z:I

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/futurae/mobileapp/ui/more/MoreFragment;->O()V

    :cond_a
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lc/c/a/j/e/e;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->b(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->w()Z

    .line 5
    new-instance v0, Lcom/futurae/mobileapp/ui/home/HomeActivity$a;

    invoke-direct {v0, p0}, Lcom/futurae/mobileapp/ui/home/HomeActivity$a;-><init>(Lcom/futurae/mobileapp/ui/home/HomeActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7
    iget-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->z:Ljava/lang/String;

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->y()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, La/b/k/h;->onStop()V

    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x40

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 6
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_0
    if-eqz v0, :cond_5

    .line 7
    array-length v3, v0

    if-eq v3, v1, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    array-length v3, v0

    if-lez v3, :cond_4

    aget-object v0, v0, v2

    .line 9
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    const-string v3, "SHA"

    .line 10
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 11
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    sput-boolean v1, Lc/c/a/c;->g:Z

    goto :goto_3

    :cond_2
    const-string v3, "WJz3OM7tvY2VNP6UOiRy/SDkx3I="

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lc/c/a/c;->g:Z

    .line 16
    sget-boolean v0, Lc/c/a/c;->g:Z

    goto :goto_3

    .line 17
    :cond_4
    sput-boolean v1, Lc/c/a/c;->g:Z

    goto :goto_3

    .line 18
    :cond_5
    :goto_2
    sput-boolean v1, Lc/c/a/c;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "is_app_first_install"

    .line 20
    invoke-static {v0, v3}, Lc/c/a/k/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    .line 21
    :cond_6
    sget-object v4, Lc/c/a/c;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    .line 22
    :cond_7
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc/c/a/c;->i:Ljava/lang/String;

    .line 23
    sget-object v4, Lc/c/a/c;->i:Ljava/lang/String;

    .line 24
    invoke-static {v0, v3, v3}, Lc/c/a/k/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lc/c/a/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    sput-boolean v1, Lc/c/a/c;->h:Z

    goto :goto_5

    .line 27
    :cond_8
    sget-object v0, Lc/c/a/c;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.vending"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    sput-boolean v0, Lc/c/a/c;->h:Z

    .line 28
    sget-boolean v0, Lc/c/a/c;->h:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_5
    const-string v0, "google_sdk"

    const-string v3, "generic"

    .line 29
    :try_start_2
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_a
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "unknown"

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v4, "goldfish"

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v4, "ranchu"

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Emulator"

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Android SDK built for x86"

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Genymotion"

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v4, "sdk_google"

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk"

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "sdk_x86"

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "vbox86p"

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "emulator"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "simulator"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Lc/c/a/c;->j:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    :catch_2
    sget-boolean v0, Lc/c/a/c;->j:Z

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    sput-boolean v0, Lc/c/a/c;->k:Z

    .line 48
    sget-boolean v0, Lc/c/a/c;->k:Z

    .line 49
    sget-boolean v0, Lc/c/a/c;->g:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lc/c/a/c;->h:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lc/c/a/c;->j:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lc/c/a/c;->k:Z

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_9
    if-eqz v1, :cond_10

    .line 50
    invoke-static {}, Lc/d/b/l/d;->a()Lc/d/b/l/d;

    move-result-object v0

    sget-object v1, Lc/c/a/c;->c:Ljava/lang/String;

    .line 51
    iget-object v0, v0, Lc/d/b/l/d;->a:Lc/d/b/l/e/k/h0;

    const-string v2, "device_udid"

    invoke-virtual {v0, v2, v1}, Lc/d/b/l/e/k/h0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lc/d/b/l/d;->a()Lc/d/b/l/d;

    move-result-object v0

    sget-boolean v1, Lc/c/a/c;->g:Z

    .line 53
    iget-object v0, v0, Lc/d/b/l/d;->a:Lc/d/b/l/e/k/h0;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_app_signature_incorrect"

    invoke-virtual {v0, v2, v1}, Lc/d/b/l/e/k/h0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lc/d/b/l/d;->a()Lc/d/b/l/d;

    move-result-object v0

    sget-boolean v1, Lc/c/a/c;->h:Z

    .line 55
    iget-object v0, v0, Lc/d/b/l/d;->a:Lc/d/b/l/e/k/h0;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_app_installer_incorrect"

    invoke-virtual {v0, v2, v1}, Lc/d/b/l/e/k/h0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lc/d/b/l/d;->a()Lc/d/b/l/d;

    move-result-object v0

    sget-object v1, Lc/c/a/c;->i:Ljava/lang/String;

    .line 57
    iget-object v0, v0, Lc/d/b/l/d;->a:Lc/d/b/l/e/k/h0;

    const-string v2, "installer"

    invoke-virtual {v0, v2, v1}, Lc/d/b/l/e/k/h0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lc/d/b/l/d;->a()Lc/d/b/l/d;

    move-result-object v0

    sget-boolean v1, Lc/c/a/c;->j:Z

    .line 59
    iget-object v0, v0, Lc/d/b/l/d;->a:Lc/d/b/l/e/k/h0;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_emulator_used"

    invoke-virtual {v0, v2, v1}, Lc/d/b/l/e/k/h0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lc/d/b/l/d;->a()Lc/d/b/l/d;

    move-result-object v0

    sget-boolean v1, Lc/c/a/c;->k:Z

    .line 61
    iget-object v0, v0, Lc/d/b/l/d;->a:Lc/d/b/l/e/k/h0;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_app_debuggable"

    invoke-virtual {v0, v2, v1}, Lc/d/b/l/e/k/h0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-boolean v0, Lc/c/a/c;->g:Z

    .line 63
    sget-boolean v0, Lc/c/a/c;->h:Z

    .line 64
    sget-boolean v0, Lc/c/a/c;->j:Z

    .line 65
    sget-boolean v0, Lc/c/a/c;->k:Z

    .line 66
    invoke-static {}, Lc/d/b/l/d;->a()Lc/d/b/l/d;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "App Tampering Detected"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/d/b/l/d;->a(Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method

.method public final w()Z
    .locals 3

    .line 1
    sget-object v0, Lc/d/a/b/f/e;->d:Lc/d/a/b/f/e;

    .line 2
    sget v1, Lc/d/a/b/f/f;->a:I

    .line 3
    invoke-virtual {v0, p0, v1}, Lc/d/a/b/f/f;->a(Landroid/content/Context;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-static {v1}, Lc/d/a/b/f/h;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2328

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Lc/d/a/b/f/e;->a(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .locals 6

    .line 1
    new-instance v0, Lc/e/a/b;

    invoke-direct {v0, p0}, Lc/e/a/b;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lc/e/a/b;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->y:Z

    return-void

    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, p0, Lcom/futurae/mobileapp/ui/home/HomeActivity;->y:Z

    .line 5
    invoke-virtual {p0, v3}, Lcom/futurae/mobileapp/ui/home/HomeActivity;->b(Z)V

    .line 6
    :cond_1
    sget-object v3, Lc/c/a/c;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lc/c/a/k/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "rooted_device_reported"

    .line 9
    invoke-static {v4, v5}, Lc/c/a/k/o;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 10
    new-instance v4, Lcom/futurae/mobileapp/ui/home/HomeActivity$b;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/futurae/mobileapp/ui/home/HomeActivity$b;-><init>(Lcom/futurae/mobileapp/ui/home/HomeActivity;ZLc/e/a/b;Landroid/content/Context;)V

    new-array v0, v2, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v4, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, La/j/a/e;->n()La/j/a/j;

    move-result-object v0

    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, La/j/a/j;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/futurae/mobileapp/ui/more/MoreFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/futurae/mobileapp/ui/more/MoreFragment;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/futurae/mobileapp/ui/more/MoreFragment;->Y:Lc/c/a/j/j/h/c;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/futurae/mobileapp/ui/more/MoreFragment;->a(Lcom/futurae/mobileapp/model/MoreItem;Z)V

    .line 6
    invoke-virtual {v0}, Lcom/futurae/mobileapp/ui/more/MoreFragment;->O()V

    .line 7
    iget-object v0, v0, Lcom/futurae/mobileapp/ui/more/MoreFragment;->Y:Lc/c/a/j/j/h/c;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
