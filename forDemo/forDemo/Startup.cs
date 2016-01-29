using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(forDemo.Startup))]
namespace forDemo
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
