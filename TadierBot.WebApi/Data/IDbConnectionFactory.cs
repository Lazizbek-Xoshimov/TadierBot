using System.Data;

namespace TadierBot.WebApi.Data;

public interface IDbConnectionFactory
{
    IDbConnection CreateConnection();
}

